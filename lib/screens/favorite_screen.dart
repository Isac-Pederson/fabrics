import 'package:fabrics/components/constants/text_styling.dart';
import 'package:fabrics/components/widgets/bottom_app_bar/rounded_bottom_app_bar.dart';
import 'package:fabrics/models/favorite_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              child: ListTile(
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                leading: Image.network(favorites[index].url),
                title: Text(
                  favorites[index].title,
                  style: kItemStyle,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
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
