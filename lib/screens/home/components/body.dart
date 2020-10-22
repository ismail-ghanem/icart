import 'package:flutter/material.dart';
import 'package:icart/size_config.dart';
import 'home_header.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'special_offers.dart';
import 'popular_products.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.035),
            HomeHeader(),
            SizedBox(height: SizeConfig.screenHeight * 0.045),
            DiscountBanner(),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Categories(),
            SizedBox(height: SizeConfig.screenHeight * 0.035),
            SpecialOffers(),
            SizedBox(height: SizeConfig.screenHeight * 0.035),
            PopularProducts(),
            SizedBox(height: SizeConfig.screenHeight * 0.035),
          ],
        ),
      ),
    );
  }
}
