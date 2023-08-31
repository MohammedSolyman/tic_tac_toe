import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/theme_controller.dart';

class MyPopupMenu extends StatelessWidget {
  const MyPopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        PopupMenuButton(
          color: Theme.of(context).primaryColorLight,
          itemBuilder: (context) {
            return [topListItem(context), themeitem(context)];
          },
          child: const Icon(Icons.menu),
        )
      ],
    );
  }
}

PopupMenuItem topListItem(BuildContext context) {
  return PopupMenuItem(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.account_box),
        Text(
          'top list',
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    ),
  );
}

PopupMenuItem themeitem(BuildContext context) {
  ThemeController controller = Get.put(ThemeController());

  return PopupMenuItem(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(() {
          return Switch(
            value: controller.themeModel.value.switchValue,
            onChanged: (value) {
              controller.toggleTheme(value);
            },
          );
        }),
        Text(
          'theme',
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    ),
  );
}
