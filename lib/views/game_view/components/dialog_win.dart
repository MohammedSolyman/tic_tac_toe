import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';

dialogWin(BuildContext context) async {
  GameController controller = Get.put(GameController());

  await Get.defaultDialog(
    backgroundColor: Theme.of(context).primaryColorLight,
    title: '',
    barrierDismissible: false,
    content: Row(
      children: [
        Expanded(
          child: Obx(() {
            String statement = controller
                        .gameViewModel.value.currentPlayer!.name ==
                    ''
                ? 'player ${controller.gameViewModel.value.currentPlayer!.symbol} wins'
                : '${controller.gameViewModel.value.currentPlayer!.name} wins';

            return AutoSizeText(statement,
                maxLines: 1,
                minFontSize: 1,
                style: Theme.of(context).textTheme.bodySmall);
          }),
        ),
      ],
    ),
    actions: [
      TextButton(
          onPressed: () {
            controller.restart();
          },
          child: const Text(
            'play again',
          )),
      TextButton(
          onPressed: () {
            controller.goBackToWelcome();
          },
          child: const Text(
            'exit',
          )),
    ],
  );
}
