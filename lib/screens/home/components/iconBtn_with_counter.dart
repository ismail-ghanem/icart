import 'package:flutter/material.dart';
import 'package:icart/size_config.dart';

import '../../../constants.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key,
    @required this.size,
    this.numOfItems = 0,
    this.icon,
    this.press,
  }) : super(key: key);

  final Size size;
  final int numOfItems;
  final IconData icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.075,
            width: SizeConfig.screenHeight * 0.075,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: SizeConfig.screenHeight * 0.035,
              color: Colors.black54,
            ),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: SizeConfig.screenHeight * 0.03,
                width: SizeConfig.screenHeight * 0.03,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.9, color: Colors.white)),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 6,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
