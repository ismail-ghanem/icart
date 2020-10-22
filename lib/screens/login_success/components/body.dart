import 'package:flutter/material.dart';
import 'package:icart/screens/home/home.dart';
import '../../../components/default_button.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset('assets/images/login_success.png'),
        Text(
          'Login Success',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
