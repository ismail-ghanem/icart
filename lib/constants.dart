import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  color: Colors.black,
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
);

//Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-z0-9.]+@[a-zA-z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = 'Please enter your email';
const String kInvalidEmailError = 'Please enter valid email';
const String kPassNullError = 'Please enter your Password';
const String kShortPassError = 'Password is too short';
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please enter your name";
const String kPhoneNumNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter your address";
