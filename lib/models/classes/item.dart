import 'package:flutter/material.dart';

class Item {
  String title;
  String url;
  String description;
  double price;
  Color color;
  bool isFavorite = false;

  Item({
    required this.color,
    required this.price,
    required this.title,
    required this.url,
    required this.description,
    required this.isFavorite,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
    //notifyListeners
  }

  void addToCart() {
    //item added to cart/checkout
  }

  void removeStock() {
    //not sure if this will be used but it's here in case I need it
  }
}
