import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class DetailedCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  const DetailedCard({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 75,
        child: Bounceable(
          onTap: onTap,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: kBlueGray, width: 2)),
            shadowColor: Colors.black,
            elevation: 10,
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.oswald(
                        fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                  const Spacer(),
                  Icon(
                    icon,
                    size: 35,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
