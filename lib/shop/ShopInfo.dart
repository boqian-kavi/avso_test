import 'package:avso_test/fragment/SideDrawer.dart';
import 'package:avso_test/fragment/TopHeader.dart';
import 'package:flutter/material.dart';

class ShopInfo extends StatefulWidget {
  @override
  _ShopInfoState createState() => _ShopInfoState();
}

class _ShopInfoState extends State<ShopInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideDrawer(),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopHeader(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
