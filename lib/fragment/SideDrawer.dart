import 'package:avso_test/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../redux/actions.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

var _listViewData = [
  {"text": "Dashboard", "icon": Icons.dashboard, 'route': '/'},
  {"text": "Requests", "icon": Icons.build, 'route': '/requests'},
  {"text": "Messages", "icon": Icons.mail_outline, 'route': '/requests'},
  {"text": "Car Tracing", "icon": Icons.location_on, 'route': '/requests'},
  {"text": "Shop Info", "icon": Icons.storefront, 'route': '/shopdetail'},
  {"text": "Settings", "icon": Icons.settings, 'route': '/requests'},
];

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return SizedBox(
          width: 260,
          child: Drawer(
            child: Container(
              color: Color(0xff213F99),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                ),
                child: ListView.builder(
                  itemCount: _listViewData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      color: state.sideDrawerIndex == index
                          ? Color(0xff127CB6)
                          : Color(0xff213F99),
                      child: ListTile(
                        minLeadingWidth: 16,
                        leading: Icon(
                          _listViewData[index]['icon'],
                          color: Colors.white,
                        ),
                        title: Text(
                          "${_listViewData[index]['text']}",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onTap: () {
                          StoreProvider.of<AppState>(context)
                              .dispatch(DrawerIndex(index));

                          Navigator.pushNamed(
                            context,
                            _listViewData[index]['route'],
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
