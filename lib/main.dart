import 'package:fabrics/models/provider/app_bar_selected.dart';
import 'package:fabrics/models/provider/item_changes.dart';
import 'package:fabrics/screens/account_screen.dart';
import 'package:fabrics/screens/checkout_screen.dart';
import 'package:fabrics/screens/home_screen.dart';
import 'package:fabrics/screens/login_screen.dart';
import 'package:fabrics/screens/register_screen.dart';
import 'package:fabrics/screens/settings_screen.dart';
import 'package:fabrics/screens/welcome_screen.dart';
import 'package:fabrics/screens/favorite_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/provider/dark_mode.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: ((context) => PageSelected()),
      ),
      ChangeNotifierProvider(
        create: ((context) => ItemChanges()),
      ),
      ChangeNotifierProvider(
        create: ((context) => ToggleTheme()),
      ),
    ],
    child: const Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: context.watch<ToggleTheme>().isLight
          ? ThemeData.light().copyWith(
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
              cardColor: Colors.grey[200],
              appBarTheme: const AppBarTheme(backgroundColor: Colors.white))
          : ThemeData.dark().copyWith(
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
            ),
      initialRoute: HomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        FavoriteScreen.id: (context) => const FavoriteScreen(),
        CheckoutScreen.id: (context) => const CheckoutScreen(),
        AccountScreen.id: (context) => const AccountScreen(),
        SettingScreen.id: (context) => const SettingScreen(),
      },
    );
  }
}
