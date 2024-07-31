import 'package:flutter/material.dart';

class ThemeChangeNotifier extends ChangeNotifier {
  bool isDarkTheme = false;

  static ThemeChangeNotifier instance = ThemeChangeNotifier();

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
