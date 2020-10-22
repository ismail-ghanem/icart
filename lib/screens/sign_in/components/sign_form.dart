import 'package:flutter/material.dart';
import 'package:icart/screens/forgot_pass/forgot_pass_screen.dart';
import 'package:icart/screens/login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text(
                'Remember me',
                style: TextStyle(fontSize: getProportionateScreenWidth(20)),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPassScreen.routeName);
                },
                child: Text(
                  'Forgot password',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      color: kPrimaryColor,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return '';
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return '';
        }
        return null;
      },
      style: TextStyle(fontSize: getProportionateScreenWidth(20)),
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        labelStyle: TextStyle(fontSize: getProportionateScreenWidth(20)),
        hintStyle: TextStyle(fontSize: getProportionateScreenWidth(20)),
        labelText: 'Password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icons.lock_outline,
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    FocusNode myFocusNode = new FocusNode();
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
        }
        return null;
      },
      style: TextStyle(fontSize: getProportionateScreenWidth(20)),
      focusNode: myFocusNode,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        labelStyle: TextStyle(fontSize: getProportionateScreenWidth(20)),
        hintStyle: TextStyle(fontSize: getProportionateScreenWidth(20)),
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icons.mail_outline,
        ),
      ),
    );
  }
}
