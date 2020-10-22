import 'package:flutter/material.dart';
import 'package:icart/constants.dart';
import 'package:icart/size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> category = [
      {'icon': Icons.flash_on, 'text': 'Flash\nDeal'},
      {'icon': Icons.format_list_bulleted, 'text': 'Bill'},
      {'icon': Icons.games, 'text': 'Game'},
      {'icon': Icons.card_giftcard, 'text': 'Daily\nGift'},
      {'icon': Icons.more_horiz, 'text': 'More'},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              category.length,
              (index) => CategoryCard(
                  icon: category[index]['icon'],
                  text: category[index]['text'],
                  press: () {}))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: SizeConfig.screenWidth * 0.17,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(SizeConfig.screenHeight * 0.01),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: SizeConfig.screenHeight * 0.01),
            ),
          ],
        ),
      ),
    );
  }
}
