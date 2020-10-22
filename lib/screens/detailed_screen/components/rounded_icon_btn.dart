import 'package:flutter/material.dart';
import 'package:icart/size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final IconData icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: SizeConfig.screenHeight * 0.05,
      width: SizeConfig.screenHeight * 0.05,
      child: Center(
        child: FlatButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Colors.white,
          onPressed: press,
          child: Icon(
            icon,
            size: getProportionateScreenHeight(26),
          ),
        ),
      ),
    );
  }
}
