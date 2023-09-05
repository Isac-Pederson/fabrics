import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.urlImage,
    required this.title,
  });

  final String urlImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(
                color: Color.fromARGB(166, 0, 0, 0), width: 1)),
        shadowColor: Colors.black,
        elevation: 10,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Image.network(urlImage),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Center(
                child: Text(
                  title,
                  style: GoogleFonts.oswald(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
