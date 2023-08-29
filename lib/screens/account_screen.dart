import 'package:fabrics/components/widgets/rounded_bottom_app_bar.dart';
import 'package:fabrics/models/provider/app_bar_selected.dart';
import 'package:fabrics/screens/search_screen.dart';
import 'package:fabrics/screens/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/widgets/detailed_card.dart';
import 'checkout_screen.dart';

class AccountScreen extends StatelessWidget {
  static String id = 'accountScreen';
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const RoundedBottomAppBar(),
      body: SafeArea(
          child: ListView(
        children: [
          DetailedCard(
            icon: Icons.account_box_rounded,
            text: 'Settings',
            onTap: () {
              // Go to account page
            },
          ),
          DetailedCard(
            icon: Icons.assignment_sharp,
            text: 'Orders',
            onTap: () {
              // Go to order history page
            },
          ),
          DetailedCard(
            icon: Icons.favorite,
            text: 'Favorites',
            onTap: () {
              context.read<PageSelected>().changePageNumber(2.0);
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(FavoriteScreen.id);
            },
          ),
          DetailedCard(
            icon: Icons.search,
            text: 'Search',
            onTap: () {
              context.read<PageSelected>().changePageNumber(4.0);
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(SearchScreen.id);
            },
          ),
          DetailedCard(
            icon: Icons.shopping_cart,
            text: 'Shopping Cart',
            onTap: () {
              context.read<PageSelected>().changePageNumber(1.0);
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(CheckoutScreen.id);
            },
          ),
          DetailedCard(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () {},
          ),
        ],
      )),
    );
  }
}
