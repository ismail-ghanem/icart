import 'package:flutter/material.dart';
import 'package:icart/screens/detailed_screen/detailed_screen.dart';
import 'package:icart/size_config.dart';
import '../../../models/product.dart';

import 'product_card.dart';
import 'section-title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(press: () {}, title: 'Popular Product'),
        SizedBox(height: SizeConfig.screenHeight * 0.035),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () {
                    Navigator.pushNamed(
                      context,
                      DetailedScreen.routeName,
                      arguments: ProductDetailsArguments(
                        product: demoProducts[index],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(width: SizeConfig.screenHeight * 0.035),
            ],
          ),
        ),
      ],
    );
  }
}
