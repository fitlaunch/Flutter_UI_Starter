import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ThemeData.light().colorScheme.copyWith(
        primary: Colors.white,
        onPrimary: Colors.black,
        secondary: Colors.deepOrange,
        onSecondary: Colors.white,
        tertiary: Colors.black87,
        onTertiary: Colors.white70,
        tertiaryContainer: Colors.grey[200],
        onTertiaryContainer: Colors.grey[800],
      ),
);

final darkTheme = ThemeData.dark().copyWith(
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: Colors.black, //was blueGrey
        onPrimary: Colors.white,
        secondary: Colors.blueGrey,
        onSecondary: Colors.black,
        tertiary: Colors.black87,
        onTertiary: Colors.white70,
        tertiaryContainer: Colors.grey[200],
        onTertiaryContainer: Colors.grey[800],
      ),
);
