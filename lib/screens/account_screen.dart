import 'package:fabrics/components/widgets/rounded_bottom_app_bar.dart';
import 'package:flutter/material.dart';

import '../components/widgets/detailed_card.dart';

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
            onTap: () {},
          ),
          DetailedCard(
            icon: Icons.assignment_sharp,
            text: 'Orders',
            onTap: () {},
          ),
          DetailedCard(
            icon: Icons.favorite,
            text: 'Favorites',
            onTap: () {},
          ),
          DetailedCard(
            icon: Icons.search,
            text: 'Search',
            onTap: () {},
          ),
          DetailedCard(
            icon: Icons.shopping_cart,
            text: 'Shopping Cart',
            onTap: () {},
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
