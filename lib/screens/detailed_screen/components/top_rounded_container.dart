import 'package:flutter/material.dart';
import 'package:icart/size_config.dart';

class TopRaoundedContainer extends StatelessWidget {
  const TopRaoundedContainer({
    Key key,
    @required this.color,
    @required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(getProportionateScreenHeight(60)),
          topLeft: Radius.circular(getProportionateScreenHeight(60)),
        ),
      ),
      child: child,
    );
  }
}
