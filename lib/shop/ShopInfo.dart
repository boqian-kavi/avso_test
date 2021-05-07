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
                Expanded(
                  flex: 1,
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Request',
                            style: TextStyle(
                              letterSpacing: 0.0,
                              fontSize: 32,
                              color: Color(0xff213F99),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xffBDBDBD),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Text('111'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
