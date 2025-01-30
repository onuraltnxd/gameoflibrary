import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

class AppTheme {
  static ThemeData lighttheme = ThemeData(
    colorScheme: const ColorScheme.light(
      tertiary: Color.fromARGB(45, 82, 186, 123),
      primary: Colors.lightBlue,
      onPrimary: Color.fromARGB(255, 221, 255, 0),
      secondary: Color.fromARGB(255, 165, 131, 37),
      onSecondary: Color.fromARGB(255, 0, 0, 0),
      surface: Colors.white,
      onSurface: Color.fromARGB(255, 0, 0, 0),
    ),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.lato(),
      bodyMedium: GoogleFonts.lato(),
      bodyLarge: GoogleFonts.lato(),
      labelSmall: GoogleFonts.montserrat(),
      labelMedium: GoogleFonts.montserrat(),
      labelLarge: GoogleFonts.montserrat(),
      titleSmall: GoogleFonts.oswald(fontSize: 20),
      titleMedium: GoogleFonts.oswald(fontSize: 20),
      titleLarge: GoogleFonts.oswald(fontSize: 20),
      headlineSmall: GoogleFonts.raleway(),
      headlineMedium: GoogleFonts.raleway(),
      headlineLarge: GoogleFonts.raleway(),
      displaySmall: GoogleFonts.playfairDisplay(),
      displayMedium: GoogleFonts.playfairDisplay(),
      displayLarge: GoogleFonts.playfairDisplay(),
    ),
  );
  static ThemeData darktheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF004d00),
      onPrimary: Colors.white,
      secondary: Color.fromARGB(255, 134, 213, 252),
      onSecondary: Color.fromARGB(255, 10, 231, 243),
      surface: Color.fromARGB(255, 0, 0, 0),
      onSurface: Colors.white,
    ),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.lato(),
      bodyMedium: GoogleFonts.lato(),
      bodyLarge: GoogleFonts.lato(),
      labelSmall: GoogleFonts.montserrat(),
      labelMedium: GoogleFonts.montserrat(),
      labelLarge: GoogleFonts.montserrat(),
      titleSmall: GoogleFonts.oswald(fontSize: 20),
      titleMedium: GoogleFonts.oswald(fontSize: 20),
      titleLarge: GoogleFonts.oswald(fontSize: 20),
      headlineSmall: GoogleFonts.raleway(),
      headlineMedium: GoogleFonts.raleway(),
      headlineLarge: GoogleFonts.raleway(),
      displaySmall: GoogleFonts.playfairDisplay(),
      displayMedium: GoogleFonts.playfairDisplay(),
      displayLarge: GoogleFonts.playfairDisplay(),
    ),
  );
  static ThemeData loadingTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
    ),
  );
}
