import 'package:fabrics/components/widgets/bottom_app_bar/rounded_bottom_app_bar.dart';
import 'package:fabrics/models/favorite_list.dart';
import 'package:fabrics/models/provider/item_changes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/widgets/item/item_tile.dart';

class FavoriteScreen extends StatelessWidget {
  static String id = 'favoriteScreen';
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (favorites.isEmpty) {
      return Scaffold(
        bottomNavigationBar: const RoundedBottomAppBar(),
        body: SafeArea(
            child: Center(
          child: Text('No favorited items.',
              style: GoogleFonts.oswald(color: Colors.grey, fontSize: 30)),
        )),
      );
    } else {
      return Scaffold(
        bottomNavigationBar: const RoundedBottomAppBar(),
        body: SafeArea(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ItemTile(
                iconButton1: IconButton(
                  onPressed: () {
                    //remove from Icons list
                    context.read<ItemChanges>().removeFromList(
                        item: favorites[index], list: favorites);
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.redAccent,
                  ),
                ),
                index: index,
                list: favorites,
                iconButton2: IconButton(
                  onPressed: () {
                    context
                        .read<ItemChanges>()
                        .addToCart(item: favorites[index]);
                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            );
          },
          itemCount: favorites.length,
        )),
      );
    }
  }
}
