import 'package:flutter/material.dart';

class Const {
  static String appName = "Social app ui";

  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.blue;
  static Color blackBackGround = Colors.black;

  static ThemeData appTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: blackBackGround,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: blackBackGround,
  );

  static TextStyle titleTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );

  static TextStyle midTextStyle = const TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 11,
  );

  static TextStyle followBtnStyle = const TextStyle(
    color: Colors.white,
  );
}
