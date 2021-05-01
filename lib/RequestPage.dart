import 'package:avso_test/GoogleMap.dart';
import 'package:avso_test/RecentRequest.dart';
import 'package:flutter/material.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff1B7690),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 300,
                            child: TextField(
                              maxLines: 1,
                              autofocus: false,
                              cursorColor: Color(0xff1B7690),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search car details, project, etc.",
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 15),
                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            color: Color(0xff127CB6),
                            child: IconButton(
                              iconSize: 22,
                              color: Colors.white,
                              icon: Icon(Icons.search),
                              padding: EdgeInsets.symmetric(vertical: 5),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Image.asset(
                  '/images/Icon_CIT.png',
                  height: 60,
                ),
              )
            ],
          ),
        ),
        // SizedBox(
        //   height: 20,
        // ),
        // Container(
        //   height: 80,
        //   width: 300,
        //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [TextFormField()],
        //   ),
        // ),
        Expanded(
          flex: 1,
          child: FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: DefaultTabController(
                          length: 2,
                          child: Column(
                            children: [
                              Container(
                                child: TabBar(
                                  unselectedLabelColor: Colors.black12,
                                  labelColor: Color(0xff213F99),
                                  indicatorColor: Colors.transparent,
                                  labelStyle: TextStyle(
                                    fontSize: 18,
                                  ),
                                  tabs: [
                                    Tab(text: "Recent Requests"),
                                    Tab(text: "All Request"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: TabBarView(
                                    children: [
                                      RecentRequest(),
                                      Container(
                                        height: 300,
                                        child: GoogleMap(),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
