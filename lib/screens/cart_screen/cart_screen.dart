import 'package:flutter/material.dart';
import 'package:icart/components/default_button.dart';
import 'package:icart/constants.dart';
import 'package:icart/models/cart.dart';
import 'package:icart/size_config.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cartScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            '${demoCart.length} items',
            style: TextStyle(fontSize: getProportionateScreenWidth(20)),
          ),
        ],
      ),
    );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(getProportionateScreenHeight(40)),
          topRight: Radius.circular(getProportionateScreenHeight(40)),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: getProportionateScreenHeight(40),
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    height: SizeConfig.screenHeight * 0.08,
                    width: SizeConfig.screenHeight * 0.08,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.list_alt,
                      color: kPrimaryColor,
                    )),
                Spacer(),
                Text('Add voucher code'),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: getProportionateScreenHeight(16),
                  color: kPrimaryColor,
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Total:\n',
                    children: [
                      TextSpan(
                        text: '\$337.15',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(24),
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.5,
                  child: DefaultButton(text: 'Check Out', press: () {}),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
