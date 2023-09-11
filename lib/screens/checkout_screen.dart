import 'package:fabrics/components/constants/colors.dart';
import 'package:fabrics/components/widgets/bottom_app_bar/rounded_bottom_app_bar.dart';
import 'package:fabrics/components/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/widgets/item_tile.dart';
import '../models/cart_list.dart';
import '../models/provider/item_changes.dart';

class CheckoutScreen extends StatelessWidget {
  static String id = 'checkoutScreen';
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (shoppingCart.isEmpty) {
      return Scaffold(
        bottomNavigationBar: const RoundedBottomAppBar(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('No items in shopping cart.',
                    style:
                        GoogleFonts.oswald(color: Colors.grey, fontSize: 30)),
              ),
            ],
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              child: CustomButton(
                text: 'Checkout',
                color: kDarkBlue,
                onPressed: () {},
              ),
            ),
          ],
        ),
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
                  // first IconButton is completely hidden, workaround since you can't use the Visibility widget on this fella. Suppose I could change this to just be a generic widget and make this a Spacer but I've already went through the trouble of setting this up :/ .
                  iconButton1: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(IconData(0)),
                  ),
                  index: index,
                  list: shoppingCart,
                  iconButton2: IconButton(
                    onPressed: () {
                      //remove from Icons list
                      context.read<ItemChanges>().removeFromList(
                          item: shoppingCart[index], list: shoppingCart);
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              );
            },
            itemCount: shoppingCart.length,
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              child: CustomButton(
                text: 'Checkout',
                color: kDarkBlue,
                onPressed: () {
                  //proceed to payment - probs going to use package but idk yet :/
                },
              ),
            ),
          ],
        ),
      );
    }
  }
}
