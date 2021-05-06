import 'package:avso_test/request/RequestPage.dart';
import 'package:avso_test/fragment/SideDrawer.dart';
import 'package:avso_test/redux/reducers.dart';
import 'package:avso_test/shop/ShopInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'redux/app_state.dart';

void main() {
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
        ),
        home: MyHomePage(title: 'Dashboard'),
        initialRoute: "/",
        routes: {
          '/requests': (context) => RequestPage(),
          '/shopdetail': (context) => ShopInfo(),
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
          SideDrawer(),
          Center(child: Text('Dashboard page')),
        ],
      ),
    );
  }
}
