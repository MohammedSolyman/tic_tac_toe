import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tic_tac_toe/controllers/game_comtroller.dart';

class Legend extends StatelessWidget {
  const Legend({super.key});

  @override
  Widget build(BuildContext context) {
    GameController controller = Get.put(GameController());

    return Obx(() {
      if (controller.gameViewModel.value.startPlay) {
        return TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: 1),
          duration: const Duration(seconds: 3),
          builder: (context, op, widget) {
            return Opacity(opacity: op, child: widget);
          },
          child: AutoSizeText(
              '${controller.gameViewModel.value.currentPlayer!.name}(${controller.gameViewModel.value.currentPlayer!.symbol}) is playing',
              maxLines: 1,
              minFontSize: 1,
              style: Theme.of(context).textTheme.displayMedium),
        );
      } else {
        return Container();
      }
    });
  }
}
