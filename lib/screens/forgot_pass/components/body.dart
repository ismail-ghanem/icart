import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:icart/components/no_account_text.dart';
import 'package:icart/size_config.dart';
import '../components/forgotPassForm.dart';

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
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Please enter your email and we will send \nyou a link to return to yout account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenWidth(24)),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                ForgotPassForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
