import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';
import 'package:tic_tac_toe/views/game_view/components/grid.dart';
import 'package:tic_tac_toe/views/game_view/components/info_button.dart';

class GridOrButton extends StatelessWidget {
  const GridOrButton({super.key});

  @override
  Widget build(BuildContext context) {
    GameController controller = Get.put(GameController());
    return Obx(() {
      if (controller.gameViewModel.value.startPlay) {
        return const Grid();
      } else {
        return const InfoButton();
      }
    });
  }
}
