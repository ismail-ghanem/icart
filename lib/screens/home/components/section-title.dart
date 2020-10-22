import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.press,
    @required this.title,
  }) : super(key: key);
  final String title;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(28), color: Colors.black),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              'See More',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
