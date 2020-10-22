import 'package:flutter/material.dart';
import 'components/body.dart';

class Home extends StatelessWidget {
  static String routeName = '/home';
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Body(),
      ),
    );
  }
}
