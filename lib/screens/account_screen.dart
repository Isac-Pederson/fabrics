import 'package:fabrics/components/widgets/rounded_bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatelessWidget {
  static String id = 'accountScreen';
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const RoundedBottomAppBar(),
      body: SafeArea(
          child: Center(
        child: Text(
            "Add Account Stuff Here :) \n (I'm just being lazy with the frontend bs) ",
            style: GoogleFonts.oswald(color: Colors.grey, fontSize: 30)),
      )),
    );
  }
}
