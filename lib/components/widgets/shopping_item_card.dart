import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '../../models/classes/item.dart';
import 'detailed_item.dart';
import 'item_card.dart';

//is this widget needed anymore??

class ShoppingItemCard extends StatelessWidget {
  final String urlImage;
  final String title;
  final Item item;

  const ShoppingItemCard({
    super.key,
    required this.urlImage,
    required this.title,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailedItemScreen(
              item: item,
            ),
          ),
        );
      },
      child: ItemCard(
        urlImage: urlImage,
        title: title,
      ),
    );
  }
}
