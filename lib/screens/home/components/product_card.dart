import 'package:flutter/material.dart';
import '../../../models/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.aspectretion = 1.02,
    @required this.product,
    @required this.press,
  }) : super(key: key);
  final double aspectretion;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.screenHeight * 0.035),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: SizeConfig.screenWidth * 0.35,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectretion,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.1),
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(30)),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                product.title,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    child: Icon(
                      Icons.favorite,
                      color: product.isFavourite
                          ? Colors.red
                          : kPrimaryColor.withOpacity(0.2),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.025,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
