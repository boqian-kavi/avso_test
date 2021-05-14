import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    String selectedValueCategory = 'All', selectedValueStatus = 'All';
    final dropdownStateCategory = GlobalKey<FormFieldState>();
    final dropdownStateStatus = GlobalKey<FormFieldState>();
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'What are you looking for?',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff127CB6),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText:
                              "Search for order number, customer, car numbert, etc",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2.0,
                              color: Color(0xffBDBDBD),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Category',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff127CB6),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        child: DropdownButtonFormField(
                          isDense: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Color(0xffBDBDBD),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          key: dropdownStateCategory,
                          value: selectedValueCategory,
                          items:
                              ['All', 'test1', 'test2', 'test3'].map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedValueCategory = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Status',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff127CB6),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Color(0xffBDBDBD),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          key: dropdownStateStatus,
                          value: selectedValueStatus,
                          items:
                              ['All', 'test1', 'test2', 'test3'].map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedValueStatus = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ElevatedButton(
              child: Text(
                'Search',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff127CB6),
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 50,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(180, 56),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
