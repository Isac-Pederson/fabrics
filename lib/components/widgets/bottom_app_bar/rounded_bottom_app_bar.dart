import 'package:fabrics/screens/account_screen.dart';
import 'package:fabrics/screens/checkout_screen.dart';
import 'package:fabrics/screens/home_screen.dart';
import 'package:fabrics/screens/favorite_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'icon_circle.dart';

class RoundedBottomAppBar extends StatelessWidget {
  const RoundedBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomAppBar(
          elevation: 1,
          color: kBlueGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconCircle(
                icon: Icons.shopping_cart,
                pageNum: 1,
                pushScreen: CheckoutScreen.id,
                tooltip: 'Checkout Cart',
              ),
              IconCircle(
                icon: Icons.favorite,
                pageNum: 2,
                pushScreen: FavoriteScreen.id,
                tooltip: 'Favorite',
              ),
              IconCircle(
                icon: Icons.home,
                pageNum: 3,
                pushScreen: HomeScreen.id,
                tooltip: 'Home',
              ),
              // IconCircle(
              //   icon: Icons.search,
              //   pageNum: 4,
              //   pushScreen: SearchScreen.id,
              //   tooltip: 'Search',
              // ),
              IconCircle(
                icon: Icons.person,
                pageNum: 5,
                pushScreen: AccountScreen.id,
                tooltip: 'Account Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
