import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color white = Color(0xFFff4667);
const Color primaryClr = bluishClr;
const Color darkGreyClr = Color.fromARGB(255, 0, 0, 0);
Color darkHeaderClr = const Color(0xFF424242);

class Themes {
  static final light = ThemeData(
      primaryColor: bluishClr,
      appBarTheme: const AppBarTheme(backgroundColor:bluishClr),
      brightness: Brightness.light);

  static final dark = ThemeData(
      primaryColor: darkGreyClr,
      appBarTheme: const AppBarTheme(
        backgroundColor: darkGreyClr),
      brightness: Brightness.dark);
}
