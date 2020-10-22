import 'package:flutter/material.dart';
import 'package:icart/models/cart.dart';

import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: demoCart.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demoCart[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoCart.removeAt(index);
              });
            },
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  Icon(
                    Icons.delete_sweep,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            child: CartItem(
              cart: demoCart[index],
            ),
          ),
        ),
      ),
    );
  }
}
