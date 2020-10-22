import 'package:flutter/Material.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/detailed_screen/detailed_screen.dart';
import 'screens/forgot_pass/forgot_pass_screen.dart';
import 'screens/home/home.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/signUp_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/cart_screen/cart_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPassScreen.routeName: (context) => ForgotPassScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  Home.routeName: (context) => Home(),
  DetailedScreen.routeName: (context) => DetailedScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
