import 'package:fabrics/models/cart_list.dart';

import '../favorite_list.dart';
import 'package:flutter/material.dart';

class ItemChanges with ChangeNotifier {
  //temp funcs til FireBase handles this
  void addToCart({item}) {
    if (item.isInCart == false) {
      shoppingCart.add(item);
      item.isInCart = true;
    } else {
      return;
    }
  }

  void addFavorite({item}) {
    if (item.isFavorite == false) {
      favorites.add(item);
      item.isFavorite = true;
    } else {
      return;
    }
  }

  void removeFromList({item, list}) {
    list.remove(item);
    item.isFavorite = false;
  }
}
