import 'package:flutter/material.dart';

import '../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key key,
    @required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: Icon(
        icon,
        size: 22,
      ),
    );
  }
}
