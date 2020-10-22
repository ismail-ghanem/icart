import 'package:flutter/material.dart';
import 'package:icart/models/product.dart';
import 'components/custom_app_bar.dart';
import 'components/body.dart';

class DetailedScreen extends StatelessWidget {
  static String routeName = '/detailedScreen';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9),
      appBar: CustomAppBar(
        rating: arguments.product.rating,
      ),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
