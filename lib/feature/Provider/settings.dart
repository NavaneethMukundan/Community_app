// ignore_for_file: file_names

import 'package:community_app/feature/theme/applog.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider with ChangeNotifier {
  SettingsProvider() {
    loadSettings();
  }

  ThemeMode _themeMode = ThemeMode.light;

  // Allow Widgets to read the user's preferred ThemeMode.
  ThemeMode? get themeMode => _themeMode;

  Future<void> loadSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _themeMode = ThemeMode.values[prefs.getInt('themeMode') ?? 1];
    notifyListeners();
  }

  /// Update and persist the ThemeMode based on the user's selection.
  Future<void> updateThemeMode(ThemeMode newThemeMode) async {
    int index = 0;
    switch (newThemeMode) {
      case ThemeMode.system:
        _themeMode = ThemeMode.system;
        index = 0;
        break;
      case ThemeMode.light:
        _themeMode = ThemeMode.light;
        index = 1;
        break;
      case ThemeMode.dark:
        _themeMode = ThemeMode.dark;
        index = 2;
        break;
      default:
        _themeMode = ThemeMode.system;
        index = 0;
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('themeMode', index);
    notifyListeners();
  }

  bool isDarkMode() {
    if (themeMode == ThemeMode.dark) {
      return true;
    } else {
      return false;
    }
  }

  setDarkTheme() {
    _themeMode = ThemeMode.dark;
    appLog(_themeMode.toString());
    notifyListeners();
  }

  setLightTheme() {
    _themeMode = ThemeMode.light;
    appLog(_themeMode.toString());
    notifyListeners();
  }

  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(index) {
    _currentIndex = index;
    notifyListeners();
  }
}
