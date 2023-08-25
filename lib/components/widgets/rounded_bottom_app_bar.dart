import 'package:fabrics/screens/account_screen.dart';
import 'package:fabrics/screens/checkout_screen.dart';
import 'package:fabrics/screens/home_screen.dart';
import 'package:fabrics/screens/wishlist.dart';
import 'package:flutter/material.dart';

import '../../screens/search_screen.dart';
import '../constants/colors.dart';

class RoundedBottomAppBar extends StatelessWidget {
  final double iconSize = 30;
  final double selectedIcon = 35;
  const RoundedBottomAppBar({
    super.key,
  });
  //create page number system when implmenting provider to highlight the page the user is on
  //Page = 0 is home page and the color should show that, pg 1 is cart, pg 2 is wishlist/favs etc... and should make the icon bigger

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
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
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomAppBar(
          elevation: 1,
          color: kBlueGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                tooltip: 'Shopping Cart',
                icon: Icon(
                  Icons.shopping_cart,
                  size: iconSize,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(CheckoutScreen.id);
                },
              ),
              IconButton(
                tooltip: 'Favorites',
                icon: Icon(
                  Icons.favorite,
                  size: iconSize,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(FavoriteScreen.id);
                },
              ),
              Stack(children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: kMidnightBlue,
                ),
                IconButton(
                  tooltip: 'Home',
                  icon: Icon(
                    Icons.home,
                    size: selectedIcon,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(HomeScreen.id);
                  },
                ),
              ]),
              IconButton(
                tooltip: 'Search',
                icon: Icon(
                  Icons.search,
                  size: iconSize,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(SearchScreen.id);
                },
              ),
              IconButton(
                tooltip: 'Account Settings',
                icon: Icon(
                  Icons.person,
                  size: iconSize,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(AccountScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
