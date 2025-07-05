import 'package:flutter/material.dart';

class AppThemeDark {
  static const Color primary = Colors.indigo;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,

    appBarTheme: const AppBarTheme(
      color: primary,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
    ),

    scaffoldBackgroundColor: Colors.black
  );
}
