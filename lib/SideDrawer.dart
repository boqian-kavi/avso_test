import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

var _listViewData = [
  {"text": "Dashboard", "icon": Icons.dashboard},
  {"text": "Requests", "icon": Icons.build},
  {"text": "Messages", "icon": Icons.mail_outline},
  {"text": "Car Tracing", "icon": Icons.location_on},
  {"text": "Shop Info", "icon": Icons.storefront},
  {"text": "Settings", "icon": Icons.settings},
];

class _SideDrawerState extends State<SideDrawer> {
  int _currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Container(
            color: Color(0xff213F99),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 60.0,
              ),
              child: ListView.builder(
                itemCount: _listViewData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    color: _currentSelected == index
                        ? Color(0xff127CB6)
                        : Color(0xff213F99),
                    child: ListTile(
                      minLeadingWidth: 16,
                      contentPadding: EdgeInsets.symmetric(horizontal: 25),
                      leading: Icon(
                        _listViewData[index]['icon'],
                        color: Colors.white,
                      ),
                      title: Text(
                        "${_listViewData[index]['text']}",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onTap: () {
                        setState(() {
                          _currentSelected = index;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class MenuListItem extends StatelessWidget {
//   final IconData iconData;
//   final String title;

//   MenuListItem(
//     this.iconData,
//     this.title,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 20),
//       child: ListTile(
//         leading: Icon(
//           iconData,
//           color: Colors.white,
//         ),
//         title: Text(
//           title,
//           style: TextStyle(color: Colors.white, fontSize: 24),
//         ),
//         minLeadingWidth: 16,
//         onTap: () {},
//       ),
//     );
//   }
// }
