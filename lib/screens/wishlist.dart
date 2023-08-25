import 'package:fabrics/components/widgets/rounded_bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteScreen extends StatelessWidget {
  static String id = 'wishListScreen';
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const RoundedBottomAppBar(),
      body: SafeArea(
          child: Center(
        child: Text('No favorited items.',
            style: GoogleFonts.oswald(color: Colors.grey, fontSize: 30)),
      )),
    );
  }
}
