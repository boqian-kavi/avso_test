import 'package:avso_test/cartracing/CarTracing.dart';
import 'package:avso_test/common/global.dart';
import 'package:avso_test/common/user_manager.dart';
import 'package:avso_test/dashboard/Dashboard.dart';
import 'package:avso_test/login/Login.dart';
import 'package:avso_test/model/chart.dart';
import 'package:avso_test/request/RequestPage.dart';
import 'package:avso_test/redux/reducers.dart';
import 'package:avso_test/setting/Settings.dart';
import 'package:avso_test/shop/ShopInfo.dart';
import 'package:avso_test/widgets/auth0_flutter_web/auth0_flutter_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:html';
import 'dart:ui' as ui;
import 'package:url_strategy/url_strategy.dart';
import 'dart:convert';

import 'redux/app_state.dart';

Auth0 auth0;

var chart1 = Chart(
    name: 'powerbi-html',
    src:
        'https://app.powerbi.com/view?r=eyJrIjoiNDM0MmM4YzctNDQzMS00YTc3LWFhZTMtZWJiZWI4MDA4MzZjIiwidCI6ImJmMjY2NWQ5LTdlNmItNDlhYi05M2E1LTRiNzI2MmE0NDQ1MiIsImMiOjN9');

var chart2 = Chart(
    name: 'powerbi2-html',
    src:
        'https://app.powerbi.com/view?r=eyJrIjoiYTg1ZTk4MjgtMTczZS00MGNhLWEyM2QtNmJiN2VmYjNjNDdjIiwidCI6ImJmMjY2NWQ5LTdlNmItNDlhYi05M2E1LTRiNzI2MmE0NDQ1MiIsImMiOjN9');

void main() async {
  ui.platformViewRegistry.registerViewFactory(
      chart1.name,
      (int viewId) => IFrameElement()
        ..width = '400'
        ..height = '220'
        ..allowFullscreen = true
        ..src = chart1.src
        ..style.border = 'none');
  ui.platformViewRegistry.registerViewFactory(
      chart2.name,
      (int viewId) => IFrameElement()
        ..width = '400'
        ..height = '220'
        ..allowFullscreen = true
        ..src = chart2.src
        ..style.border = 'none');
  final _initalState = AppState(
      sideDrawerIndex: 0,
      selectedRequests: [],
      sideDrawerOpened: true,
      sideDrawerMobileOpened: false,
      userObj: {});

  final Store<AppState> _store =
      Store<AppState>(reducer, initialState: _initalState);

  setPathUrlStrategy();

  auth0 = await createAuth0Client(Auth0ClientOptions(
    domain: 'boqian.us.auth0.com',
    client_id: '9qh0pnSL02NWCkjss24GKhnRLrAsnRaW',
  ));

  runApp(MyApp(store: _store));
}

class MyApp extends StatefulWidget {
  final Store<AppState> store;

  MyApp({this.store});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _loggedIn = false;

  @override
  void initState() {
    auth0.isAuthenticated().then(_onAuthenticationChanged);
    setupApp();
    super.initState();
  }

  setupApp() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _onAuthenticationChanged(bool isAuthenticated) async {
    if (!isAuthenticated) {
      setState(() => _loggedIn = false);
    } else {
      auth0.getUser().then((Map<String, dynamic> user) => setState(() {
            _loggedIn = true;
            UserManager.saveUser(json.encode(user));
          }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp(
        title: 'AVSO',
        theme: ThemeData(
          fontFamily: "Georgia",
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
        ),
        initialRoute: _loggedIn ? "/" : "/login",
        routes: {
          '/': (context) => Dashboard(),
          '/login': (context) => Login(auth0),
          '/requests': (context) => RequestPage(),
          '/shopdetail': (context) => ShopInfo(),
          '/cartracing': (context) => CarTracing(),
          '/settings': (context) => Settings(),
        },
      ),
    );
  }
}
