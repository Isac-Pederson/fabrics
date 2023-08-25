import 'package:fabrics/components/constants/colors.dart';
import 'package:fabrics/components/constants/text_styling.dart';
import 'package:fabrics/screens/login_screen.dart';
import 'package:fabrics/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../components/widgets/sign_in_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static String id = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBabyBlue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'runIcon',
                  child: Icon(
                    Symbols.steps,
                    fill: 1,
                    size: 100,
                    color: kNavyBlue,
                  ),
                ),
                Text('FABRICS', style: kTitleStyle)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SignInButton(
                color: kNavyBlue,
                text: 'Login',
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginScreen.id);
                },
              ),
            ),
            SignInButton(
              text: 'Register',
              color: kBlueGray,
              onPressed: () {
                Navigator.of(context).pushNamed(RegisterScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
