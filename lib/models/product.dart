import 'package:flutter/material.dart';

class Product {
  final String title;
  final String price;
  final String oldPrice;
  final Widget image;
  final Widget? discount;

  Product({
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.image,
    this.discount,
  });
}
