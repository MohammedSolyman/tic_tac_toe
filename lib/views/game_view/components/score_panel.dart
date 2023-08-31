import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';

class ScorePanel extends StatelessWidget {
  const ScorePanel({super.key});

  @override
  Widget build(BuildContext context) {
    GameController controller = Get.put(GameController());

    return Obx(() {
      if (controller.gameViewModel.value.startPlay) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                    controller.gameViewModel.value.plyerOne!.name == ''
                        ? 'player 1'
                        : controller.gameViewModel.value.plyerOne!.name,
                    style: Theme.of(context).textTheme.displayMedium),
                Text(controller.gameViewModel.value.plyerOne!.score.toString(),
                    style: Theme.of(context).textTheme.displayMedium)
              ],
            ),
            Column(
              children: [
                Text(
                    controller.gameViewModel.value.plyerTwo!.name == ''
                        ? 'player 2'
                        : controller.gameViewModel.value.plyerTwo!.name,
                    style: Theme.of(context).textTheme.displayMedium),
                Text(controller.gameViewModel.value.plyerTwo!.score.toString(),
                    style: Theme.of(context).textTheme.displayMedium)
              ],
            ),
          ],
        );
      } else {
        return Container();
      }
    });
  }
}
