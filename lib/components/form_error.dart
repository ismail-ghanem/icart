import 'package:flutter/material.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => buildFormError(error: errors[index])),
    );
  }

  Row buildFormError({String error}) {
    return Row(
      children: [
        Icon(
          Icons.error_outline,
          color: Colors.redAccent,
          size: getProportionateScreenWidth(40),
        ),
        SizedBox(
          width: getProportionateScreenHeight(10),
        ),
        Text(
          error,
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
      ],
    );
  }
}
