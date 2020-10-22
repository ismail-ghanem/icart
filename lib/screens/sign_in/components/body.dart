import 'package:flutter/material.dart';
import 'package:icart/size_config.dart';
import '../components/sign_form.dart';
import '../../../components/social_card.dart';
import '../../../components/no_account_text.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
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
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sign in with your email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
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
                NoAccountText(),
                //SizedBox(height: SizeConfig.screenHeight * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
