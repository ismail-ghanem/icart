import 'package:flutter/material.dart';
import 'package:icart/models/product.dart';
import 'package:icart/size_config.dart';

import '../../../constants.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    @required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20, left: 20, top: 20),
          child: Text(
            product.title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(15),
            width: 64,
            decoration: BoxDecoration(
                color:
                    product.isFavourite ? Color(0xffffe6e6) : Color(0xfff5f6f9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(getProportionateScreenHeight(20)),
                  bottomLeft: Radius.circular(getProportionateScreenHeight(20)),
                )),
            child: Icon(
              Icons.favorite,
              color: product.isFavourite
                  ? Colors.redAccent[700]
                  : Color(0xffdbdee4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: pressOnSeeMore,
            child: Row(
              children: [
                Text(
                  'See More Detail',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.035,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: getProportionateScreenHeight(18),
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
