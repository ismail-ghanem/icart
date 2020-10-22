import 'package:flutter/material.dart';
import 'components/body.dart';

class ForgotPassScreen extends StatelessWidget {
  static String routeName = '/forgot_pass';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Forgot Password'),
        ),
        body: Body(),
      ),
    );
  }
}
