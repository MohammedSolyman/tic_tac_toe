import 'package:flutter/material.dart';
import 'package:tic_tac_toe/controllers/controller.dart';
import 'package:tic_tac_toe/theming/my_theme.dart';
import 'package:tic_tac_toe/views/welcome_view/welcome_view.dart';
import 'package:get/get.dart';

/*
https://github.com/MohammedSolyman/tic_tac_toe.git
*/

void main() {
  Get.put(Controller());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      home: const WelcomeView(),
    );
  }
}
