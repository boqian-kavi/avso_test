import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff1B7690),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 350,
                      child: TextField(
                        maxLines: 1,
                        autofocus: false,
                        cursorColor: Color(0xff1B7690),
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText: "Search car details, project, etc.",
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff127CB6),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: IconButton(
                        iconSize: 20,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        color: Colors.white,
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  '/images/Icon_CIT.png',
                  height: 50,
                ),
                SizedBox(width: 35),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000).withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: IconButton(
                    iconSize: 26,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Color(0xff127CB6),
                    icon: Icon(Icons.notifications_none),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 35),
                Container(
                  height: 45,
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000).withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Color(0xff127CB6),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child:
                              Icon(Icons.person, size: 30, color: Colors.white),
                        ),
                        SizedBox(width: 15),
                        ConstrainedBox(
                          constraints: BoxConstraints(minWidth: 50),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Admin",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff716C6C),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.expand_more,
                          size: 34,
                          color: Color(0xff51595F),
                        ),
                      ],
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
