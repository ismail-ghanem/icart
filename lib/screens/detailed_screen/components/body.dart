import 'package:flutter/material.dart';
import 'package:icart/components/default_button.dart';
import 'package:icart/models/product.dart';
import 'package:icart/screens/cart_screen/cart_screen.dart';
import 'package:icart/size_config.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'product_image.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ProductImages(product: product),
          TopRaoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: product, pressOnSeeMore: () {}),
                TopRaoundedContainer(
                  color: Color(0xfff6f7f9),
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.04,
                      ),
                      ColorDots(product: product),
                      TopRaoundedContainer(
                        color: Colors.white,
                        child: Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 15,
                              bottom: 20,
                            ),
                            child: DefaultButton(
                                text: 'Add to Cart',
                                press: () {
                                  Navigator.pushNamed(
                                      context, CartScreen.routeName);
                                })),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 20),
        ],
      ),
    );
  }
}
