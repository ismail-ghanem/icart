import 'package:flutter/material.dart';
import 'package:icart/routes.dart';
import 'package:icart/screens/splash/splash_screen.dart';
import 'package:icart/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iCart',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
