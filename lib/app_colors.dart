import 'package:flutter/material.dart';

/// color management for the app
class AppColors {
  // Primary theme color
  static const primaryColor = Color.fromARGB(255, 37, 144, 156);

  // Secondary accent color
  static const accentColor = Color.fromARGB(255, 21, 108, 121);

  // Background gradient for screens
  static const backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color.fromARGB(255, 20, 171, 166), Color(0xFF48A2F8)],
  );

  // Gradient for quote cards
  static const cardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 30, 173, 156),
      Color.fromARGB(255, 43, 165, 232)
    ],
  );
}
