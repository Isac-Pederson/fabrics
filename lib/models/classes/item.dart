import 'package:flutter/material.dart';

class Item {
  String title;
  String url;
  String description;
  double price;
  Color color;
  bool isFavorite = false;
  bool isInCart = false;

  Item({
    required this.color,
    required this.price,
    required this.title,
    required this.url,
    required this.description,
    required this.isFavorite,
    required this.isInCart,
  });
}
