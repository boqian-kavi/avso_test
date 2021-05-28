import 'package:avso_test/fragment/TopHeader.dart';
import 'package:avso_test/model/exportcsv.dart';
import 'package:avso_test/redux/app_state.dart';
import 'package:avso_test/request/AllRequests.dart';
import 'package:avso_test/request/RecentRequest.dart';
import 'package:avso_test/fragment/SideBar.dart';
import 'package:avso_test/request/SearchBar.dart';
import 'package:avso_test/widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return Scaffold(
          body: Row(
            children: [
              SideBar(),
              Expanded(
                flex: 1,
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
                              ? EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50)
                              : EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Request',
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
                                flex: 1,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.all(10),
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
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SearchBar(),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 15,
                                              bottom: 10,
                                              left: 10,
                                              right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              ElevatedButton(
                                                child: Text(
                                                  'Export to CSV',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color(0xff213F99),
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 20,
                                                    horizontal: 40,
                                                  ),
                                                  minimumSize: Size(140, 46),
                                                ),
                                                onPressed: state
                                                            .selectedRequests
                                                            .length ==
                                                        0
                                                    ? null
                                                    : () {
                                                        null;
                                                        final exportCSV =
                                                            new ExportCsv(
                                                                data: state
                                                                    .selectedRequests);
                                                        exportCSV
                                                            .downloadData();
                                                      },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Color(0xffBDBDBD),
                                                )),
                                            child: DefaultTabController(
                                              length: 2,
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: TabBar(
                                                      unselectedLabelColor:
                                                          Colors.black12,
                                                      labelColor:
                                                          Color(0xff213F99),
                                                      indicatorColor:
                                                          Colors.transparent,
                                                      labelStyle: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                      tabs: [
                                                        Tab(
                                                            text:
                                                                "Recent Requests"),
                                                        Tab(
                                                            text:
                                                                "All Request"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      child: TabBarView(
                                                        children: [
                                                          RecentRequest(),
                                                          AllRequests(),
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
      },
    );
  }
}
