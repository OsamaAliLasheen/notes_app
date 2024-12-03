import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 39, 42, 43),
      titleTextStyle: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 39, 42, 43),
  );
}
