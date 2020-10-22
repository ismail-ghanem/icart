import 'package:flutter/material.dart';
import 'package:icart/models/cart.dart';
import 'package:icart/size_config.dart';

import '../../../constants.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
    @required this.cart,
  }) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: SizeConfig.screenWidth * 0.27,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: SizeConfig.screenWidth * 0.035,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                  text: '\$${cart.product.price} ',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: ' x${cart.numOfItems}',
                      style: TextStyle(
                        color: kSecondaryColor,
                      ),
                    ),
                  ]),
            )
          ],
        )
      ],
    );
  }
}
