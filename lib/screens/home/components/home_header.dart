import 'package:flutter/material.dart';
import 'package:icart/screens/cart_screen/cart_screen.dart';
import 'search_field.dart';
import 'iconBtn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(size: size),
          IconBtnWithCounter(
            size: size,
            numOfItems: 3,
            icon: Icons.shopping_cart,
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          IconBtnWithCounter(
            size: size,
            numOfItems: 1,
            icon: Icons.notifications,
            press: () {},
          ),
        ],
      ),
    );
  }
}
