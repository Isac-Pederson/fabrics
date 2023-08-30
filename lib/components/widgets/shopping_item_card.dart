import 'package:fabrics/components/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingItemCard extends StatelessWidget {
  final String urlImage;
  final String title;

  const ShoppingItemCard({
    super.key,
    required this.urlImage,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: Colors.black54, width: 1)),
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
      ),
    );
  }
}
