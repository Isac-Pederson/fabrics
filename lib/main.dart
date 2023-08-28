import 'package:fabrics/models/provider/app_bar_selected.dart';
import 'package:fabrics/screens/account_screen.dart';
import 'package:fabrics/screens/checkout_screen.dart';
import 'package:fabrics/screens/home_screen.dart';
import 'package:fabrics/screens/login_screen.dart';
import 'package:fabrics/screens/register_screen.dart';
import 'package:fabrics/screens/search_screen.dart';
import 'package:fabrics/screens/welcome_screen.dart';
import 'package:fabrics/screens/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: ((context) => PageNumber()),
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
      theme: ThemeData(iconTheme: IconThemeData(color: Colors.grey[300])),
      initialRoute: HomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        FavoriteScreen.id: (context) => const FavoriteScreen(),
        CheckoutScreen.id: (context) => const CheckoutScreen(),
        AccountScreen.id: (context) => const AccountScreen(),
        SearchScreen.id: (context) => const SearchScreen(),
      },
    );
  }
}
