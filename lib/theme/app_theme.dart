import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff3E4143),
      titleTextStyle: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    scaffoldBackgroundColor: const Color(0xff3E4143),
  );
}
