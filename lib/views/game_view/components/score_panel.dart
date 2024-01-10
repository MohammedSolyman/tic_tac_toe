import 'package:auto_size_text/auto_size_text.dart';
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
        return TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: 1),
          duration: const Duration(seconds: 3),
          builder: (context, op, widget) {
            return Opacity(opacity: op, child: widget);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  children: [
                    AutoSizeText(
                        controller.gameViewModel.value.plyerOne!.name == ''
                            ? 'player 1'
                            : controller.gameViewModel.value.plyerOne!.name,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(
                      height: 5,
                    ),
                    AutoSizeText(
                        controller.gameViewModel.value.plyerOne!.score
                            .toString(),
                        style: Theme.of(context).textTheme.displayMedium)
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  children: [
                    AutoSizeText(
                        controller.gameViewModel.value.plyerTwo!.name == ''
                            ? 'player 2'
                            : controller.gameViewModel.value.plyerTwo!.name,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(
                      height: 5,
                    ),
                    AutoSizeText(
                        controller.gameViewModel.value.plyerTwo!.score
                            .toString(),
                        style: Theme.of(context).textTheme.displayMedium)
                  ],
                ),
              ),
            ],
          ),
        );
      } else {
        return Container();
      }
    });
  }
}
