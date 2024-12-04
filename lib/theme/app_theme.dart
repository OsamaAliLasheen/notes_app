import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

ThemeData appTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: kPrimaryColor,
      titleTextStyle: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    scaffoldBackgroundColor: kPrimaryColor,
  );
}
