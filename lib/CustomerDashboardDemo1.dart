import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomerDashboardDemo1 extends StatelessWidget {
  CustomerDashboardDemo1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(350.0, 99.0),
            child: Container(
              width: 1570.0,
              height: 979.0,
              decoration: BoxDecoration(
                color: const Color(0xfff6f6f6),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1415.0, 572.0),
            child: Container(
              width: 443.0,
              height: 306.0,
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: const Color(0xff1b7690)),
              ),
            ),
          ),
          Container(
            width: 350.0,
            height: 1078.0,
            decoration: BoxDecoration(
              color: const Color(0xff213f99),
            ),
          ),
          Transform.translate(
            offset: Offset(990.0, 273.0),
            child: Text(
              '',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 22,
                color: const Color(0xff9a9595),
                fontWeight: FontWeight.w700,
                height: 3.0454545454545454,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(427.0, 153.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              'Good Morning, David',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 36,
                color: const Color(0xff127cb6),
                height: 0.6666666666666666,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1673.0, 25.0),
            child: Container(
              width: 185.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1673.0, 24.0),
            child: SvgPicture.string(
              _svg_u0d3rc,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(1688.4, 37.9),
            child:
                // Adobe XD layer: 'Union 33' (group)
                SizedBox(
              width: 19.0,
              height: 19.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.7, 0.0, 9.4, 9.4),
                    size: Size(18.8, 18.8),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Ellipse 155' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 11.8, 18.8, 7.1),
                    size: Size(18.8, 18.8),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Path 149' (shape)
                        SvgPicture.string(
                      _svg_ksqj3z,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1742.0, 39.0),
            child:
                // Adobe XD layer: 'John Doe' (text)
                Text(
              'David A.',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: const Color(0xff716c6c),
                fontWeight: FontWeight.w700,
                height: 1.3333333333333333,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1826.9, 43.8),
            child: SvgPicture.string(
              _svg_39dt3j,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(427.0, 298.0),
            child: Container(
              width: 443.0,
              height: 228.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(921.0, 298.0),
            child: Container(
              width: 443.0,
              height: 228.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1415.0, 298.0),
            child: Container(
              width: 443.0,
              height: 228.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(456.0, 326.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              'Programs in Progress',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xff121212),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(945.0, 322.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              'Pending Approvals',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xff121212),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(614.0, 383.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              '25',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 60,
                color: const Color(0xff213f99),
                fontWeight: FontWeight.w700,
                height: 0.4,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1094.0, 383.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              '32',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 60,
                color: const Color(0xff213f99),
                fontWeight: FontWeight.w700,
                height: 0.4,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(597.0, 487.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              'View Details',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 18,
                color: const Color(0xff3477db),
                decoration: TextDecoration.underline,
                height: 1.3333333333333333,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1076.0, 487.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              'View Details',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 18,
                color: const Color(0xff3477db),
                decoration: TextDecoration.underline,
                height: 1.3333333333333333,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1584.0, 487.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              'View Details',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 18,
                color: const Color(0xff3477db),
                decoration: TextDecoration.underline,
                height: 1.3333333333333333,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1432.0, 324.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              ' In Shop ',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xff121212),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1604.0, 383.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              '15',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 60,
                color: const Color(0xff213f99),
                fontWeight: FontWeight.w700,
                height: 0.4,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1441.0, 590.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              'Add Metrics',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xff121212),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(431.0, 572.0),
            child: Container(
              width: 443.0,
              height: 306.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(921.0, 568.0),
            child: Container(
              width: 443.0,
              height: 306.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(709.0, 641.0),
            child:
                // Adobe XD layer: '18%' (text)
                SizedBox(
              width: 30.0,
              child: Text(
                '18%',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 12,
                  color: const Color(0xff575757),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(717.0, 771.0),
            child:
                // Adobe XD layer: '15%' (text)
                SizedBox(
              width: 30.0,
              child: Text(
                '15%',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 12,
                  color: const Color(0xff575757),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(555.0, 778.0),
            child:
                // Adobe XD layer: '30%' (text)
                SizedBox(
              width: 30.0,
              child: Text(
                '30%',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 12,
                  color: const Color(0xff575757),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(457.0, 845.0),
            child:
                // Adobe XD layer: 'Rectangle 1316' (shape)
                Container(
              width: 13.0,
              height: 13.0,
              decoration: BoxDecoration(
                color: const Color(0xfff7cfcf),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(477.0, 847.0),
            child:
                // Adobe XD layer: 'VEGETABLES' (text)
                Text(
              'Waiting for approval',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 8,
                color: const Color(0xff575757),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(457.0, 792.0),
            child:
                // Adobe XD layer: 'Rectangle 1317' (shape)
                Container(
              width: 13.0,
              height: 13.0,
              decoration: BoxDecoration(
                color: const Color(0xffd7f7d7),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(477.0, 794.0),
            child:
                // Adobe XD layer: 'FRUIT' (text)
                Text(
              'On Route',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 8,
                color: const Color(0xff575757),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(457.0, 818.0),
            child:
                // Adobe XD layer: 'Rectangle 1318' (shape)
                Container(
              width: 13.0,
              height: 14.0,
              decoration: BoxDecoration(
                color: const Color(0xff6ec5de),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(477.0, 821.0),
            child:
                // Adobe XD layer: 'PROTEIN' (text)
                Text(
              ' In Shop',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 8,
                color: const Color(0xff575757),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(446.0, 595.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              'Request Status ',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xff121212),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(939.0, 595.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              'Requests by Repair Type',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xff121212),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1315.0, 643.0),
            child:
                // Adobe XD layer: '2012' (text)
                Text(
              '2012',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 8,
                color: const Color(0xff575757),
                height: 1.75,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1291.0, 643.0),
            child:
                // Adobe XD layer: 'Rectangle 805' (shape)
                Container(
              width: 16.0,
              height: 10.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xff3477db),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1315.0, 666.0),
            child:
                // Adobe XD layer: '2017' (text)
                Text(
              '2017',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 8,
                color: const Color(0xff575757),
                height: 1.75,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1291.0, 666.0),
            child:
                // Adobe XD layer: 'Rectangle 806' (shape)
                Container(
              width: 15.0,
              height: 10.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffc9c9c9),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(962.0, 695.0),
            child:
                // Adobe XD layer: 'Rectangle 801' (shape)
                Container(
              width: 361.0,
              height: 0.0,
              decoration: BoxDecoration(
                color: const Color(0xfff1f9ff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(962.0, 733.0),
            child:
                // Adobe XD layer: 'Rectangle 802' (shape)
                Container(
              width: 361.0,
              height: 1.0,
              decoration: BoxDecoration(
                color: const Color(0xfff1f9ff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(962.0, 770.0),
            child:
                // Adobe XD layer: 'Rectangle 803' (shape)
                Container(
              width: 361.0,
              height: 0.0,
              decoration: BoxDecoration(
                color: const Color(0xfff1f9ff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(962.0, 807.0),
            child:
                // Adobe XD layer: 'Rectangle 804' (shape)
                Container(
              width: 361.0,
              height: 1.0,
              decoration: BoxDecoration(
                color: const Color(0xfff1f9ff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(970.0, 676.0),
            child:
                // Adobe XD layer: '300' (text)
                Text(
              '300',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 6,
                color: const Color(0xff575757),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(970.0, 714.0),
            child:
                // Adobe XD layer: '200' (text)
                Text(
              '200',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 6,
                color: const Color(0xff575757),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(970.0, 753.0),
            child:
                // Adobe XD layer: '100' (text)
                Text(
              '100',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 6,
                color: const Color(0xff575757),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(970.0, 789.0),
            child:
                // Adobe XD layer: '0' (text)
                Text(
              '0',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 6,
                color: const Color(0xff575757),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1031.0, 757.0),
            child:
                // Adobe XD layer: '1' (shape)
                Container(
              width: 17.0,
              height: 51.0,
              decoration: BoxDecoration(
                color: const Color(0xff6ec5de),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1017.0, 762.0),
            child:
                // Adobe XD layer: '1' (shape)
                Container(
              width: 14.0,
              height: 46.0,
              decoration: BoxDecoration(
                color: const Color(0xff3477db),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1078.0, 785.0),
            child:
                // Adobe XD layer: '2' (shape)
                Container(
              width: 16.0,
              height: 23.0,
              decoration: BoxDecoration(
                color: const Color(0xff6ec5de),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1063.0, 780.0),
            child:
                // Adobe XD layer: '2' (shape)
                Container(
              width: 15.0,
              height: 28.0,
              decoration: BoxDecoration(
                color: const Color(0xff3477db),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1125.0, 728.0),
            child:
                // Adobe XD layer: '3' (shape)
                Container(
              width: 14.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: const Color(0xff6ec5de),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1108.0, 721.0),
            child:
                // Adobe XD layer: '3' (shape)
                Container(
              width: 17.0,
              height: 87.0,
              decoration: BoxDecoration(
                color: const Color(0xff3477db),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1171.0, 762.0),
            child:
                // Adobe XD layer: '4' (shape)
                Container(
              width: 15.0,
              height: 46.0,
              decoration: BoxDecoration(
                color: const Color(0xff6ec5de),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1154.0, 779.0),
            child:
                // Adobe XD layer: '4' (shape)
                Container(
              width: 17.0,
              height: 29.0,
              decoration: BoxDecoration(
                color: const Color(0xff3477db),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1262.0, 743.0),
            child:
                // Adobe XD layer: '5' (shape)
                Container(
              width: 16.0,
              height: 65.0,
              decoration: BoxDecoration(
                color: const Color(0xff6ec5de),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1246.0, 728.0),
            child:
                // Adobe XD layer: '5' (shape)
                Container(
              width: 16.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: const Color(0xff3477db),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1217.0, 705.0),
            child:
                // Adobe XD layer: '6' (shape)
                Container(
              width: 14.0,
              height: 103.0,
              decoration: BoxDecoration(
                color: const Color(0xff6ec5de),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1201.0, 687.0),
            child:
                // Adobe XD layer: '6' (shape)
                Container(
              width: 16.0,
              height: 121.0,
              decoration: BoxDecoration(
                color: const Color(0xff3477db),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1026.0, 825.0),
            child: Transform.rotate(
              angle: 1.5708,
              child:
                  // Adobe XD layer: 'ASIA' (text)
                  Text(
                'Type 6',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 6,
                  color: const Color(0xff575757),
                  height: 2,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1118.0, 824.0),
            child: Transform.rotate(
              angle: 1.5708,
              child:
                  // Adobe XD layer: 'EURORE' (text)
                  Text(
                'Type 4',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 6,
                  color: const Color(0xff575757),
                  height: 2,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1256.0, 825.0),
            child: Transform.rotate(
              angle: 1.5708,
              child:
                  // Adobe XD layer: 'AUSTRALIA' (text)
                  Text(
                'Type 1',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 6,
                  color: const Color(0xff575757),
                  height: 2,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1164.0, 824.0),
            child: Transform.rotate(
              angle: 1.5708,
              child:
                  // Adobe XD layer: 'SOUTH AMERICA' (text)
                  Text(
                'Type 3',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 6,
                  color: const Color(0xff575757),
                  height: 2,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1209.0, 824.0),
            child: Transform.rotate(
              angle: 1.5708,
              child:
                  // Adobe XD layer: 'NORTH AMERICA' (text)
                  Text(
                'Type 2',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 6,
                  color: const Color(0xff575757),
                  height: 2,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1071.0, 825.0),
            child: Transform.rotate(
              angle: 1.5708,
              child:
                  // Adobe XD layer: 'AFRICA' (text)
                  Text(
                'Type 5',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 6,
                  color: const Color(0xff575757),
                  height: 2,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(562.0, 633.0),
            child: SizedBox(
              width: 170.0,
              height: 170.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 170.0, 170.0),
                    size: Size(170.0, 170.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.7, 0.0, 82.3, 85.0),
                          size: Size(170.0, 170.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Path 269' (shape)
                              SvgPicture.string(
                            _svg_r5hov7,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(85.0, 85.0, 61.1, 83.6),
                          size: Size(170.0, 170.0),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Path 270' (shape)
                              SvgPicture.string(
                            _svg_ntmoah,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(85.0, 23.2, 83.1, 61.8),
                          size: Size(170.0, 170.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Path 271' (shape)
                              SvgPicture.string(
                            _svg_9ze645,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(85.0, 0.1, 58.4, 85.0),
                          size: Size(170.0, 170.0),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Path 272' (shape)
                              SvgPicture.string(
                            _svg_ihfiwi,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(85.0, 66.9, 85.0, 77.2),
                          size: Size(170.0, 170.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Path 273' (shape)
                              SvgPicture.string(
                            _svg_qc5pm6,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 63.6, 100.5, 106.4),
                          size: Size(170.0, 170.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Path 274' (shape)
                              SvgPicture.string(
                            _svg_cetbuk,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1597.0, 680.0),
            child: Container(
              width: 82.0,
              height: 82.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1627.9, 710.5),
            child:
                // Adobe XD layer: 'Icon feather-plus' (group)
                SizedBox(
              width: 21.0,
              height: 21.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.5, 0.0, 1.0, 21.0),
                    size: Size(21.0, 21.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_34xwjg,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 10.5, 21.0, 1.0),
                    size: Size(21.0, 21.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_7zckfi,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1751.0, 266.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                Text(
              'Edit Dashboard',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 15,
                color: const Color(0xff3477db),
                height: 1.6,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(427.0, 23.0),
            child:
                // Adobe XD layer: 'Rectangle 395' (shape)
                Container(
              width: 590.2,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff1b7690)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(437.0, 39.0),
            child:
                // Adobe XD layer: 'Adobe' (text)
                Text(
              'Search car details, projects etc.',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: const Color(0x7d605e5e),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1016.0, 23.0),
            child: Container(
              width: 94.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: const Color(0xff127cb6),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1050.6, 35.6),
            child: SvgPicture.string(
              _svg_grh5bp,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(1459.0, 15.0),
            child: Container(
              width: 90.0,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(87.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 100.0),
            child: Container(
              width: 350.0,
              height: 70.0,
              decoration: BoxDecoration(
                color: const Color(0xff127cb6),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(38.4, 121.0),
            child:
                // Adobe XD layer: 'Symbol 76 – 6' (group)
                BlendMask(
              blendMode: BlendMode.srcOver,
              region: Offset(38.4, 121.0) & Size(28.0, 28.0),
              child: SizedBox(
                width: 28.0,
                height: 28.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 28.0, 28.0),
                      size: Size(28.0, 28.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Path 102' (shape)
                          SvgPicture.string(
                        _svg_as3mx5,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(93.0, 126.0),
            child:
                // Adobe XD layer: 'FEED' (text)
                Text(
              'Dashboard',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xffffffff),
                height: 2.7916666666666665,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(93.0, 225.0),
            child:
                // Adobe XD layer: 'EXPLORE' (text)
                Text(
              'Requests',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xffffffff),
                height: 2.7916666666666665,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(96.0, 431.0),
            child:
                // Adobe XD layer: 'MESSAGES' (text)
                Text(
              'Car Tracing',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xffffffff),
                height: 2.7916666666666665,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(96.0, 530.0),
            child:
                // Adobe XD layer: 'MESSAGES' (text)
                Text(
              'Shop Info',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xffffffff),
                height: 2.7916666666666665,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(93.0, 328.0),
            child:
                // Adobe XD layer: 'NOTIFICATIONS' (text)
                Text(
              'Messages',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xffffffff),
                height: 2.7916666666666665,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(96.0, 629.0),
            child:
                // Adobe XD layer: 'SETTINGS' (text)
                Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 24,
                color: const Color(0xffffffff),
                height: 2.7916666666666665,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(39.0, 323.0),
            child: SizedBox(
              width: 29.0,
              height: 29.0,
              child: SingleChildScrollView(
                  child: Text(
                '',
                style: TextStyle(
                  fontFamily: 'Font Awesome 5 Pro',
                  fontSize: 28,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(41.0, 425.0),
            child: SizedBox(
              width: 25.0,
              height: 37.0,
              child: Text(
                '',
                style: TextStyle(
                  fontFamily: 'Font Awesome 5 Pro',
                  fontSize: 32,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(36.0, 521.0),
            child: SizedBox(
              width: 32.0,
              height: 36.0,
              child: Text(
                '',
                style: TextStyle(
                  fontFamily: 'Font Awesome 5 Pro',
                  fontSize: 28,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(35.0, 621.0),
            child: SizedBox(
              width: 36.0,
              height: 32.0,
              child: SingleChildScrollView(
                  child: Text(
                '',
                style: TextStyle(
                  fontFamily: 'Font Awesome 5 Pro',
                  fontSize: 32,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(38.0, 221.0),
            child: SizedBox(
              width: 29.0,
              height: 33.0,
              child: SingleChildScrollView(
                  child: Text(
                '',
                style: TextStyle(
                  fontFamily: 'Font Awesome 5 Pro',
                  fontSize: 32,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(327.0, 15.0),
            child: SizedBox(
              width: 46.0,
              height: 46.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 46.0, 46.0),
                    size: Size(46.0, 46.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xfff6f6f6),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.0, 12.0, 28.0, 22.5),
                    size: Size(46.0, 46.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Icon awesome-angle-…' (shape)
                        SvgPicture.string(
                      _svg_x1dvq9,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1702.0, 330.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                SizedBox(
              width: 110.0,
              child: Text(
                ' Last 10 days ',
                style: TextStyle(
                  fontFamily: 'Avenir Next LT Pro',
                  fontSize: 16,
                  color: const Color(0xff383838),
                  height: 1.5,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1603.0, 330.0),
            child:
                // Adobe XD layer: 'San Francisco, CA' (text)
                SizedBox(
              width: 81.0,
              child: Text(
                'Muscatine',
                style: TextStyle(
                  fontFamily: 'Avenir Next LT Pro',
                  fontSize: 16,
                  color: const Color(0xff383838),
                  height: 1.5,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1814.0, 327.0),
            child: SizedBox(
              width: 21.0,
              height: 19.0,
              child: Text(
                '',
                style: TextStyle(
                  fontFamily: 'Font Awesome 5 Pro',
                  fontSize: 16,
                  color: const Color(0xff383838),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1686.0, 327.0),
            child: SizedBox(
              width: 21.0,
              height: 19.0,
              child: Text(
                '',
                style: TextStyle(
                  fontFamily: 'Font Awesome 5 Pro',
                  fontSize: 16,
                  color: const Color(0xff383838),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1558.0, 134.0),
            child: SizedBox(
              width: 300.0,
              height: 61.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 300.0, 61.0),
                    size: Size(300.0, 61.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xff213f99),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(38.0, 21.0, 223.0, 24.0),
                    size: Size(300.0, 61.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'Create New Request',
                      style: TextStyle(
                        fontFamily: 'Avenir Next LT Pro',
                        fontSize: 24,
                        color: const Color(0xffffffff),
                        height: 2.7916666666666665,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}

const String _svg_ksqj3z =
    '<svg viewBox="0.0 11.8 18.8 7.1" ><path transform="translate(0.0, 11.78)" d="M 9.424520492553711 0 C 4.241034507751465 0 0 2.120516061782837 0 4.712258338928223 L 0 7.068386554718018 L 18.84904098510742 7.068386554718018 L 18.84904098510742 4.712258338928223 C 18.84904098510742 2.120516061782837 14.60800552368164 0 9.424520492553711 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u0d3rc =
    '<svg viewBox="1673.0 24.0 50.0 50.0" ><path transform="translate(1673.0, 24.0)" d="M 25 0 C 38.8071174621582 0 50 11.1928825378418 50 25 C 50 38.8071174621582 38.8071174621582 50 25 50 C 11.1928825378418 50 0 38.8071174621582 0 25 C 0 11.1928825378418 11.1928825378418 0 25 0 Z" fill="#127cb6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_39dt3j =
    '<svg viewBox="1826.9 43.8 16.5 10.7" ><path transform="translate(1826.94, 33.1)" d="M 7.395976066589355 21.06227874755859 L 0.3611569702625275 14.02745914459229 C -0.1250731348991394 13.54122924804688 -0.1250731348991394 12.75498485565186 0.3611569702625275 12.27392768859863 L 1.530178427696228 11.10490608215332 C 2.016408443450928 10.61867618560791 2.802652835845947 10.61867618560791 3.283710479736328 11.10490608215332 L 5.758021831512451 13.57921695709229 L 8.270155906677246 16.09135055541992 L 13.25660133361816 11.104905128479 C 13.74283218383789 10.61867523193359 14.52907466888428 10.61867523193359 15.01013374328613 11.104905128479 L 16.17915534973145 12.27392673492432 C 16.66538619995117 12.76015663146973 16.66538619995117 13.54640197753906 16.17915534973145 14.02745914459229 L 9.144335746765137 21.06227874755859 C 8.668450355529785 21.54850959777832 7.882205963134766 21.54850959777832 7.395976066589355 21.06227874755859 Z" fill="#51595f" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r5hov7 =
    '<svg viewBox="625.7 661.0 82.3 85.0" ><path transform="translate(621.89, 661.0)" d="M 86.10821533203125 84.9998779296875 L 86.10821533203125 0 C 46.5124397277832 0 13.29165363311768 27.05829620361328 3.799999952316284 63.60824584960938 L 86.10821533203125 84.9998779296875 Z" fill="#d7f7d7" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ntmoah =
    '<svg viewBox="708.0 746.0 61.1 83.6" ><path transform="translate(588.0, 626.0)" d="M 135.5124664306641 203.5832214355469 C 153.2207794189453 200.3248748779297 169.0166015625 191.5415649414062 181.0582427978516 179.145751953125 L 120 120 L 135.5124664306641 203.5832214355469 Z" fill="#6ec5de" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9ze645 =
    '<svg viewBox="708.0 684.2 83.1 61.8" ><path transform="translate(588.0, 651.43)" d="M 203.0873870849609 76.50411224365234 C 199.4040679931641 59.50412750244141 190.6207275390625 44.3458137512207 178.4374237060547 32.79999923706055 L 120 94.56658172607422 L 203.0873870849609 76.50411224365234 Z" fill="#f7cfcf" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ihfiwi =
    '<svg viewBox="708.0 661.1 58.4 85.0" ><path transform="translate(588.0, 660.94)" d="M 120 0.2000000029802322 L 120 0.2000000029802322 L 120 85.19988250732422 L 178.4374237060547 23.43330192565918 C 163.2082824707031 9.054154396057129 142.5957946777344 0.2000000029802322 120 0.2000000029802322 Z" fill="#d7f7d7" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qc5pm6 =
    '<svg viewBox="708.0 727.9 85.0 77.2" ><path transform="translate(588.0, 633.44)" d="M 181.0582427978516 171.7082214355469 C 195.8623962402344 156.4082336425781 204.9998779296875 135.5832824707031 204.9998779296875 112.5624694824219 C 204.9998779296875 106.3999862670898 204.3623962402344 100.3083190917969 203.0873870849609 94.5 L 120 112.5624694824219 L 181.0582427978516 171.7082214355469 Z" fill="#f7cfcf" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cetbuk =
    '<svg viewBox="623.0 724.6 100.5 106.4" ><path transform="translate(623.0, 634.81)" d="M 84.9998779296875 111.1916351318359 L 2.691662788391113 89.80000305175781 C 0.9208319783210754 96.67082214355469 0 103.8249816894531 0 111.1916351318359 C 0 158.1540832519531 38.03744506835938 196.1915130615234 84.9998779296875 196.1915130615234 C 90.31237030029297 196.1915130615234 95.48320007324219 195.6956939697266 100.5123596191406 194.7748565673828 L 84.9998779296875 111.1916351318359 Z" fill="#6ec5de" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_34xwjg =
    '<svg viewBox="18.0 7.5 1.0 21.0" ><path  d="M 18 7.5 L 18 28.5" fill="none" stroke="#1b7690" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_7zckfi =
    '<svg viewBox="7.5 18.0 21.0 1.0" ><path  d="M 7.5 18 L 28.5 18" fill="none" stroke="#1b7690" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_grh5bp =
    '<svg viewBox="1050.6 35.6 24.2 24.2" ><path transform="translate(1050.62, 35.62)" d="M 24.22847747802734 22.09515380859375 L 19.19992637634277 17.06660079956055 C 20.57135009765625 15.238037109375 21.333251953125 13.10471248626709 21.333251953125 10.6666259765625 C 21.333251953125 4.723791122436523 16.60945892333984 0 10.6666259765625 0 C 4.72379207611084 0 0 4.723791122436523 0 10.6666259765625 C 0 16.60945892333984 4.723791122436523 21.333251953125 10.6666259765625 21.333251953125 C 13.10471248626709 21.333251953125 15.238037109375 20.57135009765625 17.06660079956055 19.19992828369141 L 22.09515380859375 24.22847938537598 L 24.22847747802734 22.09515380859375 Z M 3.047607421875 10.6666259765625 C 3.047607421875 6.399975299835205 6.399975299835205 3.047607421875 10.6666259765625 3.047607421875 C 14.93327713012695 3.047607421875 18.28564453125 6.399975299835205 18.28564453125 10.6666259765625 C 18.28564453125 14.93327713012695 14.93327713012695 18.28564453125 10.6666259765625 18.28564453125 C 6.399975299835205 18.28564453125 3.047607421875 14.93327713012695 3.047607421875 10.6666259765625 Z" fill="#ffffff" stroke="#000000" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_as3mx5 =
    '<svg viewBox="0.0 36.0 28.0 28.0" ><path transform="translate(0.0, 36.0)" d="M 0 24.5 L 28 24.5 L 28 28 L 0 28 L 0 24.5 Z M 0 12.25 L 28 12.25 L 28 21 L 0 21 L 0 12.25 Z M 12.25000095367432 0 L 28 0 L 28 8.75 L 12.25000095367432 8.75 L 12.25000095367432 0 Z M 0 0 L 8.75 0 L 8.75 8.75 L 0 8.75 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x1dvq9 =
    '<svg viewBox="334.0 23.0 28.0 22.5" ><path transform="translate(332.27, 16.25)" d="M 15.72890663146973 16.8046875 L 25.29140663146973 7.2421875 C 25.95234489440918 6.581250190734863 27.02109336853027 6.581250190734863 27.67500114440918 7.2421875 L 29.26406288146973 8.831250190734863 C 29.92500114440918 9.4921875 29.92500114440918 10.56093788146973 29.26406288146973 11.21484375 L 22.49296951293945 18 L 29.27109527587891 24.77812576293945 C 29.93203353881836 25.43906402587891 29.93203353881836 26.5078125 29.27109527587891 27.16172027587891 L 27.68203163146973 28.7578125 C 27.02109336853027 29.41875076293945 25.95234489440918 29.41875076293945 25.29843711853027 28.7578125 L 15.73593711853027 19.1953125 C 15.06796836853027 18.53437423706055 15.06796836853027 17.46562576293945 15.72890567779541 16.8046875 Z M 2.228906631469727 19.1953125 L 11.79140663146973 28.7578125 C 12.45234394073486 29.41875076293945 13.52109432220459 29.41875076293945 14.17500019073486 28.7578125 L 15.76406288146973 27.16875076293945 C 16.42500114440918 26.5078125 16.42500114440918 25.43906402587891 15.76406288146973 24.78515625 L 8.992968559265137 18 L 15.77109336853027 11.22187519073486 C 16.43203163146973 10.56093788146973 16.43203163146973 9.4921875 15.77109336853027 8.838281631469727 L 14.18203163146973 7.2421875 C 13.52109432220459 6.581250190734863 12.45234394073486 6.581250190734863 11.79843807220459 7.2421875 L 2.23593807220459 16.8046875 C 1.56796932220459 17.46562576293945 1.56796932220459 18.53437423706055 2.228906869888306 19.1953125 Z" fill="#127cb6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
