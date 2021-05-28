import 'package:avso_test/fragment/GoogleMap.dart';
import 'package:avso_test/fragment/SideBar.dart';
import 'package:avso_test/fragment/TopHeader.dart';
import 'package:avso_test/widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';

class CarTracing extends StatefulWidget {
  @override
  _CarTracingState createState() => _CarTracingState();
}

class _CarTracingState extends State<CarTracing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopHeader(),
                Expanded(
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Container(
                      padding: ResponsiveWidget.isLargeScreen(context)
                          ? EdgeInsets.symmetric(vertical: 20, horizontal: 50)
                          : EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Car Tracing Result',
                            style: TextStyle(
                              letterSpacing: 0.0,
                              fontSize: 40,
                              color: Color(0xff213F99),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Locations',
                                    style: TextStyle(
                                      color: Color(0xff127CB6),
                                      fontSize: 26,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(
                                    height: 450,
                                    child: GoogleMap(),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'UTLX 600059',
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Color(0xff213F99),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            '497 Evergreen Rd.',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            'Roseville, CA 95673',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            '2 KM',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(height: 6),
                                          InkWell(
                                            onTap: () {},
                                            child: Text(
                                              'View history',
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Color(0xff3477DB),
                                                  fontSize: 16),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            child: Text(
                                              'Cancel',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color(0XFF213F99),
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              padding: EdgeInsets.symmetric(
                                                vertical: 5,
                                                horizontal: 20,
                                              ),
                                              side: BorderSide(
                                                width: 2,
                                                color: Color(0XFF213F99),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              minimumSize: Size(240, 48),
                                            ),
                                            onPressed: () {},
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 30),
                                            child: ElevatedButton(
                                              child: Text(
                                                'New Trace',
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0XFF213F99),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 5,
                                                  horizontal: 20,
                                                ),
                                                side: BorderSide(
                                                  width: 2,
                                                  color: Color(0XFF213F99),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                minimumSize: Size(240, 48),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
