import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: SizedBox(
        height: 50,
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
          ),
          child: Text(
            text,
            style: GoogleFonts.oswald(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
