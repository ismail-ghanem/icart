import 'package:flutter/material.dart';
import 'package:icart/screens/detailed_screen/components/rounded_icon_btn.dart';
import 'package:icart/size_config.dart';

class CustomAppBar extends PreferredSize {
  final double rating;

  CustomAppBar({this.rating});
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              icon: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(getProportionateScreenHeight(20)),
              ),
              child: Row(
                children: [
                  Text(
                    '$rating',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.star,
                    size: getProportionateScreenHeight(20),
                    color: Colors.amberAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
