import 'package:flutter/material.dart';
import '../../../components/social_card.dart';
import '../../../size_config.dart';
import 'signUp_form.dart';

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
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'Register Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: getProportionateScreenWidth(24)),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    press: () {},
                    icon: 'assets/icons/google.svg',
                  ),
                  SocialCard(
                    press: () {},
                    icon: 'assets/icons/facebook.svg',
                  ),
                  SocialCard(
                    press: () {},
                    icon: 'assets/icons/twitter.svg',
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              Text(
                "By continuing your confirm that you agree \nwith our Terms and Conditions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
