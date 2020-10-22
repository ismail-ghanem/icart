import 'package:flutter/material.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName;
  String lastName;
  String address;
  String phoneNum;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
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

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      keyboardType: TextInputType.name,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNameNullError)) {
          setState(() {
            errors.add(kNameNullError);
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
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icons.person_outline,
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      keyboardType: TextInputType.name,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNameNullError)) {
          setState(() {
            errors.add(kNameNullError);
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
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icons.person_outline,
        ),
      ),
    );
  }

  TextFormField buildPhoneNumFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNum = newValue,
      keyboardType: TextInputType.phone,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumNullError)) {
          setState(() {
            errors.remove(kPhoneNumNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPhoneNumNullError)) {
          setState(() {
            errors.add(kPhoneNumNullError);
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
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icons.phone_iphone,
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      keyboardType: TextInputType.name,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
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
        labelText: 'Address',
        hintText: 'Enter your address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: Icons.location_on_outlined,
        ),
      ),
    );
  }
}
