import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/form_error.dart';
import '../../../size_config.dart';
import '../../../components/default_button.dart';

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => email = newValue,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
                return '';
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
                return '';
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
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                }
              }),
        ],
      ),
    );
  }
}
