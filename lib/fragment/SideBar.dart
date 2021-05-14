import 'package:avso_test/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'dart:math' as math;
import '../redux/actions.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

var _listViewData = [
  {"text": "Dashboard", "icon": Icons.dashboard_outlined, 'route': '/'},
  {"text": "Requests", "icon": Icons.build_outlined, 'route': '/requests'},
  {"text": "Messages", "icon": Icons.mail_outline, 'route': '/requests'},
  {
    "text": "Car Tracing",
    "icon": Icons.location_on_outlined,
    'route': '/cartracing'
  },
  {
    "text": "Shop Info",
    "icon": Icons.storefront_outlined,
    'route': '/shopdetail'
  },
  {"text": "Settings", "icon": Icons.settings_outlined, 'route': '/settings'},
];

class _SideBarState extends State<SideBar> {
  bool isSiderBarOpened = false;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        if (isSiderBarOpened) {
          return SizedBox(
            width: 260,
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                Container(
                  width: 240,
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
                              minLeadingWidth: 25,
                              leading: Icon(
                                _listViewData[index]['icon'],
                                color: Colors.white,
                                size: 28,
                              ),
                              title: Text(
                                "${_listViewData[index]['text']}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
                Positioned(
                    top: 15,
                    left: isSiderBarOpened ? 220 : 0,
                    child: Container(
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                        shape: BoxShape.circle,
                      ),
                      child: Transform.rotate(
                        angle: 180 * math.pi / 180,
                        child: IconButton(
                          icon: Icon(Icons.double_arrow),
                          color: Color(0xff127CB6),
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          iconSize: 28,
                          onPressed: () {
                            setState(() {
                              isSiderBarOpened = !isSiderBarOpened;
                            });
                          },
                        ),
                      ),
                    )),
              ],
            ),
          );
        } else {
          return Container(
            width: 80,
            color: Color(0xff213F99),
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20, top: 15),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    iconSize: 32,
                    onPressed: () {
                      setState(() {
                        isSiderBarOpened = !isSiderBarOpened;
                      });
                    },
                  ),
                ),
                ..._listViewData.asMap().entries.map((list) {
                  int index = list.key;
                  return FractionallySizedBox(
                    widthFactor: 1.0,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      // padding: EdgeInsets.symmetric(horizontal: 0),
                      color: state.sideDrawerIndex == index
                          ? Color(0xff127CB6)
                          : Color(0xff213F99),
                      child: IconButton(
                        icon: Icon(
                          list.value['icon'],
                          color: Colors.white,
                          size: 28,
                        ),
                        color: Colors.white,
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        iconSize: 32,
                        onPressed: () {
                          StoreProvider.of<AppState>(context)
                              .dispatch(DrawerIndex(index));

                          Navigator.pushNamed(
                            context,
                            _listViewData[index]['route'],
                          );
                        },
                      ),
                    ),
                  );
                })
              ],
            ),
          );
        }
      },
    );
  }
}
