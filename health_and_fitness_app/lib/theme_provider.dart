import 'package:flutter/material.dart';

// A provider that manages the app's theme mode
class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light; // Default is light mode

  // Getter to access the current theme mode
  ThemeMode get themeMode => _themeMode;

  // Toggle between light and dark mode
  void toggleTheme(bool isDarkMode) {
    _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners(); // Notify listeners to rebuild widget
  }

  // Set a specific theme mode directly
  void setTheme(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners(); // Notify listeners to apply the change
  }
}
