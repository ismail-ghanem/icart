import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(
            SizeConfig.screenHeight * 0.01,
          )),
      child: Text.rich(
        TextSpan(
            text: 'A Summer Surprise\n',
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: 'Cashback 20%',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.screenHeight * 0.03,
                    fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }
}
