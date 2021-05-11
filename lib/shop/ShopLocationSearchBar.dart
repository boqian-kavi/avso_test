import 'package:flutter/material.dart';

class ShopLocationSearchBar extends StatelessWidget {
  const ShopLocationSearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffDBDBDB),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: TextFormField(
          cursorColor: Color(0xffDBDBDB),
          style: TextStyle(
            color: Color(0xff8D8D94),
            fontSize: 16,
          ),
          decoration: InputDecoration(
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.only(
              top: 14,
              bottom: 14,
              left: 12,
            ),
            hintText: "Search shop, location, etc.",
            hintStyle: TextStyle(
              color: Color(0xff8D8D94),
              fontSize: 13,
            ),
            isDense: true,
            suffixIconConstraints: BoxConstraints(
              minWidth: 2,
              minHeight: 2,
            ),
            suffixIcon: InkWell(
              child: Icon(
                Icons.search,
                size: 22,
                color: Color(0xff8D8D94),
              ),
              onTap: () {},
            ),
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
