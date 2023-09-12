import 'package:fabrics/components/widgets/bottom_app_bar/rounded_bottom_app_bar.dart';
import 'package:fabrics/models/provider/app_bar_selected.dart';
import 'package:fabrics/screens/favorite_screen.dart';
import 'package:fabrics/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/widgets/account_card.dart';
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
          AccountCard(
              icon: Icons.account_box_rounded,
              text: 'Settings',
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(SettingScreen.id);
              }),
          AccountCard(
            icon: Icons.assignment_sharp,
            text: 'Orders',
            onTap: () {
              // Go to order history page
            },
          ),
          AccountCard(
            icon: Icons.favorite,
            text: 'Favorites',
            onTap: () {
              context.read<PageSelected>().changePageNumber(2.0);
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(FavoriteScreen.id);
            },
          ),
          // AccountCard(
          //   icon: Icons.search,
          //   text: 'Search',
          //   onTap: () {
          //     context.read<PageSelected>().changePageNumber(4.0);
          //     Navigator.of(context).pop();
          //     Navigator.of(context).pushNamed(SearchScreen.id);
          //   },
          // ),
          AccountCard(
            icon: Icons.shopping_cart,
            text: 'Shopping Cart',
            onTap: () {
              context.read<PageSelected>().changePageNumber(1.0);
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(CheckoutScreen.id);
            },
          ),
          AccountCard(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () {},
          ),
        ],
      )),
    );
  }
}
