import 'package:avso_test/cartracing/CarTracing.dart';
import 'package:avso_test/dashboard/Dashboard.dart';
import 'package:avso_test/model/chart.dart';
import 'package:avso_test/request/RequestPage.dart';
import 'package:avso_test/fragment/SideBar.dart';
import 'package:avso_test/redux/reducers.dart';
import 'package:avso_test/setting/Settings.dart';
import 'package:avso_test/shop/ShopInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'dart:html';
import 'dart:ui' as ui;

import 'redux/app_state.dart';

var chart1 = Chart(
    name: 'powerbi-html',
    src:
        'https://app.powerbi.com/view?r=eyJrIjoiNDM0MmM4YzctNDQzMS00YTc3LWFhZTMtZWJiZWI4MDA4MzZjIiwidCI6ImJmMjY2NWQ5LTdlNmItNDlhYi05M2E1LTRiNzI2MmE0NDQ1MiIsImMiOjN9');

var chart2 = Chart(
    name: 'powerbi2-html',
    src:
        'https://app.powerbi.com/view?r=eyJrIjoiYTg1ZTk4MjgtMTczZS00MGNhLWEyM2QtNmJiN2VmYjNjNDdjIiwidCI6ImJmMjY2NWQ5LTdlNmItNDlhYi05M2E1LTRiNzI2MmE0NDQ1MiIsImMiOjN9');

void main() {
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
  final _initalState = AppState(sideDrawerIndex: 0, selectedRequests: []);

  final Store<AppState> _store =
      Store<AppState>(reducer, initialState: _initalState);

  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({this.store});
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'AVSO',
        theme: ThemeData(
          fontFamily: "Georgia",
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
        ),
        initialRoute: "/",
        routes: {
          '/': (context) => Dashboard(),
          '/requests': (context) => RequestPage(),
          '/shopdetail': (context) => ShopInfo(),
          '/cartracing': (context) => CarTracing(),
          '/settings': (context) => Settings(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          Center(child: Text('Dashboard page')),
        ],
      ),
    );
  }
}
