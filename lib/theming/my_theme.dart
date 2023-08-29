import 'package:flutter/material.dart';
import 'package:tic_tac_toe/theming/my_colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primarySwatch: lightSwatch,
      primaryColor: lightSwatch.shade500,
      primaryColorDark: lightSwatch.shade900,
      primaryColorLight: lightSwatch.shade100,
      elevatedButtonTheme: LightTheme.elevatedButtonThemeData);
  static ThemeData darkTheme = ThemeData(
      primarySwatch: darkSwatch,
      primaryColor: darkSwatch.shade500,
      primaryColorDark: darkSwatch.shade900,
      primaryColorLight: darkSwatch.shade100,
      elevatedButtonTheme: DarkTheme.elevatedButtonThemeData);
}

class LightTheme {
  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
          style: ButtonStyle(
    textStyle: MaterialStatePropertyAll(
        TextStyle(fontSize: 20, color: lightSwatch.shade50)),
    backgroundColor: MaterialStatePropertyAll(lightSwatch.shade900),
  ));
}

class DarkTheme {
  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
          style: ButtonStyle(
    textStyle: MaterialStatePropertyAll(
        TextStyle(fontSize: 20, color: darkSwatch.shade50)),
    backgroundColor: MaterialStatePropertyAll(darkSwatch.shade900),
  ));
}
