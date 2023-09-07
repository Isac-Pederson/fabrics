import 'package:fabrics/components/constants/colors.dart';
import 'package:fabrics/components/constants/text_styling.dart';
import 'package:fabrics/components/widgets/custom_button.dart';
import 'package:fabrics/components/widgets/item_card.dart';
import 'package:fabrics/models/provider/item_changes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/classes/item.dart';

class DetailedItemScreen extends StatelessWidget {
  const DetailedItemScreen({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Flexible(
                child: ItemCard(
                  urlImage: item.url,
                  title: item.title,
                ),
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: Container(
                  decoration: BoxDecoration(
                      color: item.color,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                ),
              ),
              Text(
                item.description,
                style: kItemStyle,
              ),
              Text(
                '\$${item.price}',
                style: kItemStyle,
              ),
              SizedBox(
                width: 300,
                child: CustomButton(
                    text: 'Checkout',
                    color: kBlueGray,
                    onPressed: () {
                      //add to cart
                    }),
              ),
              SizedBox(
                width: 300,
                child: CustomButton(
                    text: 'Add to Favorites',
                    color: kDarkBlue,
                    onPressed: () {
                      context
                          .read<ItemChanges>()
                          .addFavorite(item: item, isFavorite: item.isFavorite);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
