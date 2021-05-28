import 'package:avso_test/fragment/SideBar.dart';
import 'package:avso_test/fragment/TopHeader.dart';
import 'package:avso_test/shop/ContactInformation.dart';
import 'package:avso_test/shop/GeneralSection.dart';
import 'package:avso_test/shop/LocationListItem.dart';
import 'package:avso_test/shop/LocationType.dart';
import 'package:avso_test/shop/ShopCapacity.dart';
import 'package:avso_test/shop/ShopLocationSearchBar.dart';
import 'package:avso_test/widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ShopInfo extends StatefulWidget {
  @override
  _ShopInfoState createState() => _ShopInfoState();
}

class _ShopInfoState extends State<ShopInfo> {
  bool status = true;
  final List _locations = [];
  final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'marion@utlx.com',
      queryParameters: {'subject': 'Example Subject!'});

  @override
  void initState() {
    _locations.add({
      "color": 0xffF0E380,
      "prefix": 'U',
      "location": 'Altoona, PA',
    });
    _locations.add({
      "color": 0xffF0E380,
      "prefix": 'U',
      "location": 'Celaya, MX',
    });
    _locations.add({
      "color": 0xffF0E380,
      "prefix": 'U',
      "location": 'E. Chicago, IN',
    });
    _locations.add({
      "color": 0xffF0E380,
      "prefix": 'U',
      "location": 'Evanston, WY',
    });
    _locations.add({
      "color": 0xffF0E380,
      "prefix": 'U',
      "location": 'Marion, OH',
    });
    _locations.add({
      "color": 0xff80D6F0,
      "prefix": 'T',
      "location": 'Valdosta, GA',
    });
    _locations.add({
      "color": 0xff80D6F0,
      "prefix": 'T',
      "location": 'Toledo, OH',
    });
    _locations.add({
      "color": 0xff80D6F0,
      "prefix": 'T',
      "location": 'Buffalo, NY',
    });
    _locations.add({
      "color": 0xffAAFAEB,
      "prefix": 'P',
      "location": 'Oakville, ON',
    });
    _locations.add({
      "color": 0xffAAFAEB,
      "prefix": 'P',
      "location": 'Plano, TX',
    });
    _locations.add({
      "color": 0xffAAFAEB,
      "prefix": 'P',
      "location": 'Dallas, TX',
    });
    super.initState();
  }

  // List index of the podcast that is playing right now
  int activeIndex = 0;

  void _setActiveCity(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Expanded(
                  flex: 1,
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 90),
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
                            'Shop Information',
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
                              padding: EdgeInsets.all(20),
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
                              child: Row(
                                children: [
                                  Container(
                                    width: 210,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ShopLocationSearchBar(),
                                        SizedBox(height: 16),
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: _locations.length,
                                            itemBuilder: (context, index) {
                                              return LocationListItem(
                                                color: _locations[index]
                                                    ["color"],
                                                prefix: _locations[index]
                                                    ["prefix"],
                                                location: _locations[index]
                                                    ["location"],
                                                listIndex: index,
                                                isSelected:
                                                    activeIndex == index,
                                                onPress: _setActiveCity,
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 30),
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 48,
                                                    width: 48,
                                                    decoration: BoxDecoration(
                                                      color: Color(_locations[
                                                              activeIndex]
                                                          ["color"]),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        _locations[activeIndex]
                                                            ["prefix"],
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff1D1D1D),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 24,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Text(
                                                      _locations[activeIndex]
                                                          ["location"],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff213F99),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 34,
                                                      ),
                                                    ),
                                                  ),
                                                  MouseRegion(
                                                    cursor: SystemMouseCursors
                                                        .click,
                                                    child: FlutterSwitch(
                                                        activeColor:
                                                            Color(0xff00AA00),
                                                        width: 74.0,
                                                        height: 40.0,
                                                        valueFontSize: 25.0,
                                                        toggleSize: 30.0,
                                                        borderRadius: 30.0,
                                                        padding: 4.0,
                                                        value: status,
                                                        onToggle: (val) {
                                                          setState(() {
                                                            status = val;
                                                          });
                                                        }),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 16),
                                              Flexible(
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1,
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                      top: BorderSide(
                                                        width: 10,
                                                        color:
                                                            Color(0xffF6F6F6),
                                                      ),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(height: 12),
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            'General',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff127CB6),
                                                              fontSize: 32,
                                                            ),
                                                          ),
                                                        ),
                                                        GeneralSection(),
                                                        ContactSection(
                                                            emailLaunchUri:
                                                                _emailLaunchUri),
                                                        SizedBox(height: 10),
                                                        LocationType(),
                                                        SizedBox(height: 10),
                                                        ShopCapacity(),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
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
                TopHeader(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
