import 'package:fabrics/components/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/widgets/bottom_app_bar/rounded_bottom_app_bar.dart';
import '../components/widgets/custom_button.dart';
import '../models/provider/dark_mode.dart';

class SettingScreen extends StatelessWidget {
  static String id = 'settingScreen';
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const RoundedBottomAppBar(),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 150),
            child: Icon(
              Icons.person_pin_circle_rounded,
              size: 150,
            ),
          ),
          Center(
            child: Text(
              'Email: logged_in_user@email.com',
              style: GoogleFonts.oswald(
                fontSize: 20,
              ),
            ),
          ),
          CustomButton(
            onPressed: () {},
            text: 'Change Password',
            color: kNavyBlue,
          ),
          CustomButton(
            onPressed: () {
              context.read<ToggleTheme>().isLightToggle();
            },
            text: 'Toggle Light/Dark Mode',
            color: kMidnightBlue,
          ),
        ],
      )),
    );
  }
}
