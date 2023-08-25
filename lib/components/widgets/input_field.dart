import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class InputField extends StatelessWidget {
  final String text;
  final TextInputType textInputType;
  final bool obscureText;
  const InputField({
    super.key,
    required this.text,
    required this.textInputType,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SizedBox(
          height: 50,
          child: TextField(
            obscureText: obscureText,
            style: GoogleFonts.oswald(
                color: const Color.fromARGB(240, 255, 255, 255)),
            textAlign: TextAlign.center,
            keyboardType: textInputType,
            decoration: InputDecoration(
              hintStyle: GoogleFonts.oswald(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kDarkBlue, width: 1)),
              filled: true,
              hintText: text,
              fillColor: kBlueGray,
            ),
          ),
        ),
      ),
    );
  }
}
