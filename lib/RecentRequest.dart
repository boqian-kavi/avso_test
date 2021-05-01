import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RecentRequest extends StatelessWidget {
  const RecentRequest({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor: MaterialStateColor.resolveWith(
        (states) => Color(0xff213f99),
      ),
      headingTextStyle: TextStyle(color: Colors.white),
      onSelectAll: (boolValue) {
        print("onSelectAll");
      },
      columns: [
        DataColumn(label: Text("Request ID")),
        DataColumn(label: Text("Car No.")),
        DataColumn(label: Text("Location")),
        DataColumn(label: Text("SRD")),
        DataColumn(label: Text("Current Status")),
        DataColumn(label: Text("Updated")),
        DataColumn(label: Text("Details")),
      ],
      rows: requests
          .map(
            (request) => DataRow(
              onSelectChanged: (bool) {},
              cells: [
                DataCell(Text("REQ " + (request.id).toString())),
                DataCell(Text("UTLX " + (request.carNo).toString())),
                DataCell(
                  InkWell(
                    child: Text(
                      request.location,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xff3477DB),
                      ),
                    ),
                    onTap: () => launch(
                        'https://docs.flutter.io/flutter/services/UrlLauncher-class.html'),
                  ),
                ),
                DataCell(Text(request.srd)),
                DataCell(Container(
                    constraints: BoxConstraints(minWidth: 100),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: request.status == "Pending"
                          ? Color(0xfff7cfcf)
                          : Color(0xffBDBDBD),
                    ),
                    child: Text(
                      request.status,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
                DataCell(Text(request.updated)),
                DataCell(
                  InkWell(
                    child: Text(
                      'View Status',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xff3477DB),
                      ),
                    ),
                    onTap: () => launch(
                        'https://docs.flutter.io/flutter/services/UrlLauncher-class.html'),
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}

class Request {
  int id;
  int carNo;
  String location;
  String srd;
  String status;
  String updated;

  Request(
      {this.id,
      this.carNo,
      this.location,
      this.srd,
      this.status,
      this.updated});
}

var requests = [
  Request(
      id: 1235,
      carNo: 11004,
      location: "Chicago, IL",
      srd: "Jul 28, 2020",
      status: 'Pending',
      updated: "Today"),
  Request(
      id: 1234,
      carNo: 11003,
      location: "Plano, TX",
      srd: "Aug 29, 2019",
      status: 'Pending',
      updated: "Today"),
  Request(
      id: 1233,
      carNo: 11003,
      location: "Dallas, TX",
      srd: "Aug 1, 2020",
      status: 'Pending',
      updated: "Yesterday"),
  Request(
      id: 1232,
      carNo: 11002,
      location: "Chicago, IL",
      srd: "Sep 22, 2020",
      status: 'En Route',
      updated: "Today"),
  Request(
      id: 1231,
      carNo: 11001,
      location: "Chicago, IL",
      srd: "Aug 1, 2020",
      status: 'Pending',
      updated: "Today"),
];
