import 'package:flutter/material.dart';

class LocationListItem extends StatelessWidget {
  final int color;
  final String prefix;
  final String location;
  final bool isSelected;
  final int listIndex;
  final Function(int index) onPress;

  LocationListItem({
    @required this.color,
    @required this.prefix,
    @required this.location,
    this.isSelected,
    this.listIndex,
    this.onPress,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        child: Row(
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  prefix,
                  style: TextStyle(
                    color: Color(0xff1D1D1D),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              location,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : Color(0xff213F99),
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: isSelected ? Color(0xff127CB6) : Colors.white,
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: isSelected ? Color(0xff127CB6) : Color(0xff213F99),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () => onPress(listIndex),
      ),
    );
  }
}
