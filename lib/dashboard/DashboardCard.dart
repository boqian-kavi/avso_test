import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardCard extends StatefulWidget {
  final String title;
  final String content;
  final bool isPowerBi;
  final String viewType;

  DashboardCard({
    @required this.title,
    this.content,
    @required this.isPowerBi,
    this.viewType,
    Key key,
  }) : super(key: key);

  @override
  _DashboardCardState createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {
  @override
  Widget build(BuildContext context) {
    if (widget.isPowerBi) {
      return SizedBox(
        width: 340,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(2, 5),
              ),
            ],
          ),
          child: SizedBox(
            height: 160,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(child: HtmlElementView(viewType: widget.viewType)),
              ],
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        width: 340,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(2, 5),
              ),
            ],
          ),
          child: SizedBox(
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Text(
                  widget.content,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff213F99),
                  ),
                ),
                InkWell(
                  child: Text(
                    'View Details',
                    style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      color: Color(0xff3477DB),
                    ),
                  ),
                  onTap: () => launch(
                      'https://docs.flutter.io/flutter/services/UrlLauncher-class.html'),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
