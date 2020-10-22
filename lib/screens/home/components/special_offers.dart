import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section-title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Special for you',
          press: () {},
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.035),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: 'Digital Cameras',
                image: 'assets/images/SP-2.jpg',
                numbOfBrands: 5,
                press: () {},
              ),
              SpecialOfferCard(
                category: 'Lenses',
                image: 'assets/images/SP-4.jpg',
                numbOfBrands: 8,
                press: () {},
              ),
              SpecialOfferCard(
                category: 'watches',
                image: 'assets/images/SP-1.jpg',
                numbOfBrands: 18,
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    this.category,
    this.numbOfBrands,
    this.press,
    this.image,
  }) : super(key: key);

  final String category, image;
  final int numbOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Stack(
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.15,
            width: SizeConfig.screenWidth * 0.7,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenHeight(20)),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text.rich(
              TextSpan(style: TextStyle(color: Colors.white), children: [
                TextSpan(
                    text: '$category\n',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(32),
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                  text: '$numbOfBrands Brands',
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
