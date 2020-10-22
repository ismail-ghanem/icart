import 'package:flutter/material.dart';
import 'package:icart/models/product.dart';
import 'package:icart/size_config.dart';

import '../../../constants.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: SizeConfig.screenWidth * 0.8,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(widget.product.images[selectedImage]),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallPreview(size, index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(Size size, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(4),
        height: SizeConfig.screenHeight * 0.08,
        width: SizeConfig.screenHeight * 0.08,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(getProportionateScreenHeight(10)),
            border: Border.all(
                color: selectedImage == index
                    ? kPrimaryColor
                    : Colors.grey.withOpacity(0.4))),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
