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
        return Text(
            '${controller.gameViewModel.value.currentPlayer!.name}(${controller.gameViewModel.value.currentPlayer!.symbol}) is playing',
            style: Theme.of(context).textTheme.bodySmall);
      } else {
        return Container();
      }
    });
  }
}
