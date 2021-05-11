import 'package:flutter/material.dart';
import 'package:avso_test/widgets/custom_expansion_tile.dart' as custom;

class LocationType extends StatelessWidget {
  const LocationType({
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
            "Location Type",
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
              child: Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 110, bottom: 32),
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 1),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Color(0xff00AA00),
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xff00AA00),
                                )),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Text(
                            'Fixed Shop - Full Service Facility',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 110, bottom: 32),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Color(0xffFCB6B6),
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xffFCB6B6),
                                )),
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Text(
                            'Fixed Shop - Dedicated On Site (mini)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 110, bottom: 32),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Color(0xff00AA00),
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xff00AA00),
                                )),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Text(
                            'Fast Track',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, bottom: 32),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Color(0xffFCB6B6),
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xffFCB6B6),
                                )),
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Text(
                            'Mobile Unit',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
