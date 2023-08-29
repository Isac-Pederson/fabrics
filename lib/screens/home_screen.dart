import 'package:fabrics/components/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
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
            'Add filter / categories function here? Idk if I like this you might need to move it somwhere else? Or maybe have an FAB?',
            style: GoogleFonts.oswald(color: Colors.white, fontSize: 8),
          )),
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: const RoundedBottomAppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(25, (index) {
          return Bounceable(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: kBlueGray, width: 2)),
                shadowColor: Colors.black,
                elevation: 10,
                color: Colors.white,
                child: Column(
                  children: [
                    Flexible(
                      child: Image.network('https://t.ly/xj2V6'),
                    ),
                    Center(
                      child: Text(
                        'Altra Shoes $index',
                        style: GoogleFonts.oswald(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
