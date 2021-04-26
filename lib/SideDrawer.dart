import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Container(
            color: Color(0xff213F99),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                top: 60.0,
              ),
              child: ListView(
                children: <Widget>[
                  MenuListItem(Icons.settings, 'Dashboard'),
                  MenuListItem(Icons.settings, 'Requests'),
                  MenuListItem(Icons.settings, 'Messages'),
                  MenuListItem(Icons.settings, 'Car Tracing'),
                  MenuListItem(Icons.settings, 'Shop Info'),
                  MenuListItem(Icons.settings, 'Settings'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MenuListItem extends StatelessWidget {
  final IconData iconData;
  final String title;

  MenuListItem(
    this.iconData,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        leading: Icon(
          iconData,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        minLeadingWidth: 16,
        onTap: () {},
      ),
    );
  }
}
