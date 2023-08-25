import 'package:fabrics/components/widgets/rounded_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static String id = 'searchScreen';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const RoundedBottomAppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SearchBar(
          backgroundColor: MaterialStatePropertyAll(Colors.grey[200]),
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0)),
          leading: const Icon(
            Icons.search,
            color: Colors.black54,
          ),
        ),
      )),
    );
  }
}
