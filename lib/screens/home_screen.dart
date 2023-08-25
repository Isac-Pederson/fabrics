import 'package:fabrics/components/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/widgets/rounded_bottom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: kBlueGray,
          automaticallyImplyLeading: false,
          title: Center(
              child: Text(
            'Add filter function here? Idk if I like this you might need to move it somwhere else? Or maybe have an FAB?',
            style: GoogleFonts.oswald(color: Colors.white, fontSize: 8),
          )),
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: const RoundedBottomAppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(25, (index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                  color: kMidnightBlue,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: Center(
                child: Text(
                  'Item $index',
                  style:
                      GoogleFonts.oswald(fontSize: 25, color: Colors.grey[300]),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
