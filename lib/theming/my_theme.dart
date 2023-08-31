import 'package:flutter/material.dart';
import 'package:tic_tac_toe/theming/my_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primarySwatch: lightSwatch,
      primaryColor: lightSwatch.shade500,
      primaryColorDark: lightSwatch.shade900,
      primaryColorLight: lightSwatch.shade100,
      elevatedButtonTheme: Light.elevatedButtonThemeData,
      textTheme: Light.textTheme,
      iconTheme: IconThemeData(
        color: lightSwatch.shade300,
      ),
      textButtonTheme: Light.textButtonTheme);
  static ThemeData darkTheme = ThemeData(
      primarySwatch: darkSwatch,
      primaryColor: darkSwatch.shade500,
      primaryColorDark: darkSwatch.shade900,
      primaryColorLight: darkSwatch.shade100,
      elevatedButtonTheme: Dark.elevatedButtonThemeData,
      textTheme: Dark.textTheme,
      iconTheme: IconThemeData(
        color: darkSwatch.shade300,
      ),
      textButtonTheme: Dark.textButtonTheme);
}

class Light {
  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
      style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(GoogleFonts.pressStart2p(
              color: lightSwatch.shade50, fontSize: 12))));

  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
          style: ButtonStyle(
    side: MaterialStatePropertyAll(BorderSide(color: lightSwatch.shade50)),
    textStyle: MaterialStatePropertyAll(
        GoogleFonts.permanentMarker(fontSize: 20, color: lightSwatch.shade50)),
    backgroundColor: MaterialStatePropertyAll(lightSwatch.shade900),
  ));

  static TextTheme textTheme = TextTheme(
    bodyMedium:
        GoogleFonts.pressStart2p(color: lightSwatch.shade50, fontSize: 40),
    bodySmall:
        GoogleFonts.pressStart2p(color: lightSwatch.shade700, fontSize: 15),
    bodyLarge:
        GoogleFonts.permanentMarker(fontSize: 20, color: lightSwatch.shade700),
    displaySmall: GoogleFonts.permanentMarker(fontSize: 20),
    displayMedium:
        GoogleFonts.pressStart2p(color: lightSwatch.shade50, fontSize: 15),
  );
}

class Dark {
  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
      style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(GoogleFonts.pressStart2p(
              color: darkSwatch.shade50, fontSize: 12))));

  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
          style: ButtonStyle(
    side: MaterialStatePropertyAll(BorderSide(color: darkSwatch.shade50)),
    textStyle: MaterialStatePropertyAll(
        GoogleFonts.permanentMarker(fontSize: 20, color: darkSwatch.shade50)),
    backgroundColor: MaterialStatePropertyAll(darkSwatch.shade900),
  ));

  static TextTheme textTheme = TextTheme(
    bodyMedium:
        GoogleFonts.pressStart2p(color: darkSwatch.shade50, fontSize: 40),
    bodySmall:
        GoogleFonts.pressStart2p(color: darkSwatch.shade700, fontSize: 15),
    bodyLarge:
        GoogleFonts.permanentMarker(fontSize: 20, color: darkSwatch.shade700),
    displaySmall: GoogleFonts.permanentMarker(fontSize: 20),
    displayMedium:
        GoogleFonts.pressStart2p(color: darkSwatch.shade50, fontSize: 15),
  );
}
