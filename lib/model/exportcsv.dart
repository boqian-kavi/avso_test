import 'dart:html';

import 'package:csv/csv.dart';

class ExportCsv {
  final List data;
  ExportCsv({this.data});

  List<List<dynamic>> rows = [];
  downloadData() {
    rows.add(['ID', 'Car Number', 'Location', 'SRD', 'Status', 'Updated']);
    for (int i = 0; i < data.length; i++) {
      List<dynamic> row = [];
      row.add(data[i].id);
      row.add(data[i].carNo);
      row.add(data[i].location);
      row.add(data[i].srd);
      row.add(data[i].status);
      row.add(data[i].updated);
      rows.add(row);
    }

    String csv = const ListToCsvConverter().convert(rows);
    new AnchorElement(href: "data:text/plain;charset=utf-8,$csv")
      ..setAttribute("download", "data.csv")
      ..click();
  }
}
