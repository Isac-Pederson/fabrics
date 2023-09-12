import 'package:fabrics/components/constants/colors.dart';
import 'package:flutter/material.dart';

import '../components/widgets/bottom_app_bar/rounded_bottom_app_bar.dart';
import '../components/widgets/item/shopping_item_card.dart';
import '../models/classes/item_list.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          shadowColor: kBlueGray,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.list,
                    size: 40,
                    color: kBlueGray,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white70,
      bottomNavigationBar: const RoundedBottomAppBar(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ShoppingItemCard(
            urlImage: items[index].url,
            title: items[index].title,
            item: items[index],
          );
        },
      ),
    );
  }
}
