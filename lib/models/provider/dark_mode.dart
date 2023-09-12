import 'package:flutter/material.dart';

class ToggleTheme with ChangeNotifier {
  bool isLight = true;
  void isLightToggle() {
    isLight = !isLight;
    notifyListeners();
  }
}
