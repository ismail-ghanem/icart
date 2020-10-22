import 'package:flutter/material.dart';
import 'package:icart/theme.dart';

import '../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,
      width: size.width * 0.6,
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) {
          //search value
        },
        style: TextStyle(fontSize: 9),
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintStyle: textTheme().bodyText2,
          hintText: 'Search Product',
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
        ),
      ),
    );
  }
}
