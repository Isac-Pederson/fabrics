import 'package:fabrics/components/constants/colors.dart';
import 'package:flutter/material.dart';

class PageSelected with ChangeNotifier {
  double page = 3;

  final double iconSize = 30;
  final double selectedIcon = 35;
  final Color iconColor = Colors.white;
  final Color? selectedColor = Colors.grey[300];

  void changePageNumber(pageNumber) {
    page = pageNumber;
    notifyListeners();
  }

  double changeIconSize({required double pageNumber}) {
    bool isSelected;
    isSelected = page == pageNumber;

    return isSelected ? selectedIcon : iconSize;
  }

  Color? changeColor({required double pageNumber}) {
    bool isSelected;
    isSelected = page == pageNumber;

    return isSelected ? selectedColor : iconColor;
  }

  Color changeCircleColor({required double pageNumber}) {
    bool isSelected;
    isSelected = page == pageNumber;

    return isSelected ? kMidnightBlue : kBlueGray;
  }
}
