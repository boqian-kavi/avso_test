import 'package:avso_test/redux/app_state.dart';
import 'package:avso_test/widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:overlay_container/overlay_container.dart';

class TopHeader extends StatefulWidget {
  const TopHeader({
    Key key,
  }) : super(key: key);

  @override
  _TopHeaderState createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> {
  bool _dropdownShown = false;

  void _toggleDropdown() {
    setState(() {
      _dropdownShown = !_dropdownShown;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Container(
            color: Colors.white,
            padding: ResponsiveWidget.isLargeScreen(context)
                ? EdgeInsets.symmetric(vertical: 20, horizontal: 40)
                : EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff1B7690),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: ResponsiveWidget.isLargeScreen(context)
                                ? 350
                                : 250,
                            child: TextField(
                              maxLines: 1,
                              autofocus: false,
                              cursorColor: Color(0xff1B7690),
                              decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                hintText: "Search car details, project, etc.",
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal:
                                      ResponsiveWidget.isLargeScreen(context)
                                          ? 15
                                          : 12,
                                  vertical:
                                      ResponsiveWidget.isLargeScreen(context)
                                          ? 10
                                          : 8,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xff127CB6),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: IconButton(
                              iconSize: 20,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              color: Colors.white,
                              icon: Icon(Icons.search),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        '/images/Icon_CIT.png',
                        height:
                            ResponsiveWidget.isLargeScreen(context) ? 50 : 40,
                      ),
                      SizedBox(
                          width: ResponsiveWidget.isLargeScreen(context)
                              ? 30
                              : 15),
                      Container(
                        width:
                            ResponsiveWidget.isLargeScreen(context) ? 45 : 40,
                        height:
                            ResponsiveWidget.isLargeScreen(context) ? 45 : 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff000000).withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: IconButton(
                          iconSize:
                              ResponsiveWidget.isLargeScreen(context) ? 26 : 22,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          color: Color(0xff127CB6),
                          icon: Icon(Icons.notifications_none),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                          width: ResponsiveWidget.isLargeScreen(context)
                              ? 30
                              : 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: ResponsiveWidget.isLargeScreen(context)
                                  ? 45
                                  : 40,
                              child: _dropdownShown
                                  ? ElevatedButton(
                                      onPressed: _toggleDropdown,
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: ResponsiveWidget
                                                      .isLargeScreen(context)
                                                  ? 15
                                                  : 15),
                                        ),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            side:
                                                BorderSide(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      child: AdminRow(),
                                    )
                                  : ElevatedButton(
                                      onPressed: _toggleDropdown,
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: ResponsiveWidget
                                                      .isLargeScreen(context)
                                                  ? 15
                                                  : 15),
                                        ),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side:
                                                BorderSide(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      child: AdminRow(),
                                    )),
                          OverlayContainer(
                            show: _dropdownShown,
                            // show: true,
                            position: OverlayContainerPosition(
                              0, // Left position.
                              0, // Bottom position.
                            ),
                            child: Container(
                              height: ResponsiveWidget.isLargeScreen(context)
                                  ? 45
                                  : 40,
                              padding: EdgeInsets.all(0),
                              margin: EdgeInsets.all(0),
                              width: ResponsiveWidget.isLargeScreen(context)
                                  ? 153
                                  : 136,
                              child: ElevatedButton(
                                onPressed: () async {
                                  // auth0.logout();
                                },
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.zero),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Logout",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff716C6C),
                                        ),
                                      ),
                                      Icon(
                                        Icons.logout,
                                        size: ResponsiveWidget.isLargeScreen(
                                                context)
                                            ? 26
                                            : 24,
                                        color: Color(0xff51595F),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

class AdminRow extends StatelessWidget {
  const AdminRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: ResponsiveWidget.isLargeScreen(context) ? 35 : 32,
          width: ResponsiveWidget.isLargeScreen(context) ? 35 : 32,
          decoration: BoxDecoration(
            color: Color(0xff127CB6),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(Icons.person,
              size: ResponsiveWidget.isLargeScreen(context) ? 26 : 22,
              color: Colors.white),
        ),
        SizedBox(width: ResponsiveWidget.isLargeScreen(context) ? 15 : 10),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 45,
            child: Text(
              'ad',
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff716C6C),
              ),
            ),
          ),
        ),
        SizedBox(width: ResponsiveWidget.isLargeScreen(context) ? 10 : 5),
        Icon(
          Icons.expand_more,
          size: ResponsiveWidget.isLargeScreen(context) ? 34 : 30,
          color: Color(0xff51595F),
        ),
      ],
    );
  }
}
