import 'package:flutter/material.dart';
import 'package:avso_test/widgets/custom_expansion_tile.dart' as custom;

class ShopCapacity extends StatelessWidget {
  const ShopCapacity({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      tileColor: Color(0xffF6F6F6),
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      dense: true,
      child: custom.ExpansionTile(
        title: Container(
          child: Text(
            "Shop Capacity",
            style: TextStyle(
              fontSize: 22,
              color: Color(0xff213F99),
            ),
          ),
        ),
        children: [
          Container(
            padding: EdgeInsets.only(top: 32),
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff121212),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 150, bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Repair Capacity',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 7),
                        Text('60'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 150, bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Storage Capacity',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 7),
                        Text('500'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 150, bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Onsite Capacity',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 7),
                        Text('800'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
