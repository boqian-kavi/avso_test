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
          height: 70,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search car details, project, etc.",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 4.0,
                          style: BorderStyle.solid),
                    ),
                  ),
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage('/images/Icon_CIT.png'),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Text('sss'),
        )
      ],
    );
  }
}
