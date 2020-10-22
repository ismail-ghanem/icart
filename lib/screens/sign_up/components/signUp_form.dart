import 'package:flutter/material.dart';
import '../../../screens/complete_profile/complete_profile_screen.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String conformPassword;
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
          buildConfirmPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
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
        password = value;
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

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => conformPassword = newValue,
      obscureText: true,
      onChanged: (value) {
        if (password == conformPassword && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          return '';
        } else if (password != value && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kMatchPassError);
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
        labelText: 'Confirm Password',
        hintText: 'Re-enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icons.lock_outline,
        ),
      ),
    );
  }
}
