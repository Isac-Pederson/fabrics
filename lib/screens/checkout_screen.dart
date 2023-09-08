import 'package:fabrics/components/widgets/bottom_app_bar/rounded_bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreen extends StatelessWidget {
  static String id = 'checkoutScreen';
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const RoundedBottomAppBar(),
      body: SafeArea(
          child: Center(
        child: Text('No items in shopping cart.',
            style: GoogleFonts.oswald(color: Colors.grey, fontSize: 30)),
      )),
    );
  }
}
