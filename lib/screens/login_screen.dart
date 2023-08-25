import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../components/constants/colors.dart';
import '../components/widgets/input_field.dart';
import '../components/widgets/sign_in_button.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String id = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBabyBlue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'runIcon',
                child: Icon(
                  Symbols.steps,
                  fill: 1,
                  size: 150,
                  color: kNavyBlue,
                ),
              ),
              const InputField(
                obscureText: false,
                text: 'Email',
                textInputType: TextInputType.emailAddress,
              ),
              const InputField(
                obscureText: true,
                text: 'Password',
                textInputType: TextInputType.visiblePassword,
              ),
              const Padding(padding: EdgeInsets.only(top: 200)),
              SignInButton(
                text: 'Login',
                color: kNavyBlue,
                onPressed: () {
                  Navigator.of(context).pushNamed(HomeScreen.id);
                  //go to home screen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
