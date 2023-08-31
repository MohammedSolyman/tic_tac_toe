import 'package:flutter/material.dart';
import 'package:tic_tac_toe/controllers/theme_controller.dart';
import 'package:tic_tac_toe/controllers/welcome_controller.dart';
import 'package:tic_tac_toe/theming/my_theme.dart';
import 'package:tic_tac_toe/views/welcome_view/welcome_view.dart';
import 'package:get/get.dart';

/*
https://github.com/MohammedSolyman/tic_tac_toe.git
*/

void main() {
  Get.put(WelcomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController controller = Get.put(ThemeController());
    return Obx(() => GetMaterialApp(
          themeMode: controller.themeModel.value.themeMode,
          theme: MyThemeData.lightTheme,
          darkTheme: MyThemeData.darkTheme,
          home: const WelcomeView(),
        ));
  }
}
