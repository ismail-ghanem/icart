import 'package:flutter/material.dart';
import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
