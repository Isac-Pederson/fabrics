import 'package:flutter/material.dart';

class Item {
  String title;
  String url;
  String description;
  bool isFavorite = false;

  Item({
    required this.title,
    required this.url,
    required this.description,
    required this.isFavorite,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
    //notifyListeners
  }
}
