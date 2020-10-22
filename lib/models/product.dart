import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;
  final int id;

  Product({
    @required this.title,
    @required this.description,
    @required this.images,
    @required this.colors,
    @required this.price,
    this.rating,
    this.isFavourite = false,
    this.isPopular,
    this.id,
  });
}

//our demo products
List<Product> demoProducts = [
  Product(
    images: [
      'assets/images/ps4 controller 1.png',
      'assets/images/ps4_controller_2.png',
      'assets/images/ps4_controller_3.png',
      'assets/images/ps4_controller_4.png',
    ],
    colors: [
      Color(0xfff6625e),
      Color(0xff836d88),
      Colors.black,
      Colors.white,
    ],
    title: 'Wireless Controller for PS4',
    price: 64.99,
    description: 'description',
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    id: 1,
  ),
  Product(
    images: [
      'assets/images/Nike_Sport_White (1).png',
      'assets/images/Nike_Sport_White (2).png',
      'assets/images/Nike_Sport_White (3).png',
    ],
    colors: [
      Color(0xfff6625e),
      Color(0xff836d88),
      Colors.black,
      Colors.white,
    ],
    title: 'Nike Sport White - Man pant',
    price: 50.5,
    description: 'description',
    rating: 4.1,
    isPopular: true,
    isFavourite: false,
    id: 2,
  ),
  Product(
    images: [
      'assets/images/gloves_omega 1.png',
      'assets/images/gloves_omega 2.png',
    ],
    colors: [
      Color(0xfff6625e),
      Color(0xff836d88),
      Colors.black,
      Colors.white,
    ],
    title: 'Gloves XC Omega - Polygon',
    price: 36.55,
    description: 'description',
    rating: 4.1,
    isPopular: true,
    isFavourite: true,
    id: 3,
  ),
  Product(
    images: [
      'assets/images/gameing headest (1).png',
      'assets/images/gameing headest (2).png',
      'assets/images/gameing headest (3).png',
      'assets/images/gameing headest (4).png',
    ],
    colors: [
      Color(0xfff6625e),
      Color(0xff836d88),
      Colors.black,
      Colors.white,
    ],
    title: 'Logitech Gameing Headest',
    price: 20.20,
    description: 'description',
    rating: 4.1,
    isFavourite: true,
    id: 4,
  ),
];
