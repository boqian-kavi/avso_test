import 'package:avso_test/redux/app_state.dart';
import 'package:avso_test/widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key key,
  }) : super(key: key);

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
                      Container(
                        height:
                            ResponsiveWidget.isLargeScreen(context) ? 45 : 40,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.transparent,
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
                        child: AdminButton(
                          state: state,
                        ),
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

class AdminButton extends StatefulWidget {
  final state;
  AdminButton({
    this.state,
    Key key,
  }) : super(key: key);

  @override
  _AdminButtonState createState() => _AdminButtonState();
}

class _AdminButtonState extends State<AdminButton> {
  bool dropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: Colors.white),
          ),
        ),
      ),
      onPressed: () {
        setState(() {
          dropdownOpen = !dropdownOpen;
        });
      },
      child: dropdownOpen
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AdminRow(state: widget.state),
                ElevatedButton(
                  child: Text('logout'),
                  onPressed: () {
                    // auth0.logout();
                  },
                )
              ],
            )
          : AdminRow(state: widget.state),
    );
  }
}

class AdminRow extends StatelessWidget {
  final state;
  const AdminRow({
    this.state,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: ResponsiveWidget.isLargeScreen(context) ? 40 : 35,
          width: ResponsiveWidget.isLargeScreen(context) ? 40 : 35,
          decoration: BoxDecoration(
            color: Color(0xff127CB6),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(Icons.person,
              size: ResponsiveWidget.isLargeScreen(context) ? 30 : 28,
              color: Colors.white),
        ),
        SizedBox(width: ResponsiveWidget.isLargeScreen(context) ? 15 : 10),
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 50),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'login',
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
