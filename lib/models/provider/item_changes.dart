import '../favorite_list.dart';
import 'package:flutter/material.dart';

class ItemChanges with ChangeNotifier {
  void toggleFavorite() {
    //notifyListeners
  }

  void addToCart() {
    //item added to cart/checkout
  }

  void removeStock() {
    //not sure if this will be used but it's here in case I need it
  }

  void addFavorite({item}) {
    if (item.isFavorite == false) {
      favorites.add(item);
      item.isFavorite = true;
    } else {
      return;
    }

    print(favorites.length);
  }

  void removeFavorite(item) {
    favorites.remove(item);
  }
}
