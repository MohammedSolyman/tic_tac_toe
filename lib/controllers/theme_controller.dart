import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/models/theme_model.dart';

class ThemeController extends GetxController {
  Rx<ThemeModel> themeModel = ThemeModel().obs;

  void toggleTheme(bool b) {
    themeModel.update((val) {
      if (b) {
        val!.switchValue = b;
        val.themeMode = ThemeMode.light;
      } else {
        val!.switchValue = b;
        val.themeMode = ThemeMode.dark;
      }
    });
  }
}
