import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "By continuing your confirm that you agree \nwith our Terms and Conditions",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: getProportionateScreenWidth(20)),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
