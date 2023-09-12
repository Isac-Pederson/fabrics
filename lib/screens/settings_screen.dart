import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/widgets/bottom_app_bar/rounded_bottom_app_bar.dart';
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
        children: [
          const Text('Email: logged_in_user@email.com'),
          TextButton(
            onPressed: () {},
            child: const Text('Change Password'),
          ),
          TextButton(
            onPressed: () {
              context.read<ToggleTheme>().isLightToggle();
            },
            child: const Text('Toggle Light/Dark Mode'),
          ),
        ],
      )),
    );
  }
}
