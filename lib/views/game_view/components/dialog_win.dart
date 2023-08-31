import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';

dialogWin(BuildContext context) async {
  GameController controller = Get.put(GameController());

  await Get.defaultDialog(
    backgroundColor: Theme.of(context).primaryColorLight,
    title: '',
    barrierDismissible: false,
    content: Column(
      children: [
        Row(
          children: [
            Obx(() {
              String statement = controller
                          .gameViewModel.value.currentPlayer!.name ==
                      ''
                  ? 'player ${controller.gameViewModel.value.currentPlayer!.symbol} wins'
                  : '${controller.gameViewModel.value.currentPlayer!.name} wins';

              return Text(statement,
                  style: Theme.of(context).textTheme.bodySmall);
            }),
          ],
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
