import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    @required this.text,
    @required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(
          flex: 3,
        ),
        Text(
          'iCart',
          style: GoogleFonts.kaushanScript(
            fontSize: getProportionateScreenWidth(48),
            color: kPrimaryColor,
            //fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10),
        ),
        Spacer(),
        Image.asset(
          image,
          height: SizeConfig.screenHeight * 0.35,
        ),
      ],
    );
  }
}
