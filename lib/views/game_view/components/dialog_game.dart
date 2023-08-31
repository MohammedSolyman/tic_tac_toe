import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';

dialogGame(BuildContext context) async {
  GameController controller = Get.put(GameController());

  await Get.defaultDialog(
    backgroundColor: Theme.of(context).primaryColorLight,
    title: '',
    content: Column(
      children: [
        Row(
          children: [
            Text('player 1 chooses ',
                style: Theme.of(context).textTheme.bodySmall),
            Obx(() {
              return Text(
                controller.gameViewModel.value.player1chooseX ? 'x' : 'o',
                //  style: Theme.of(context).textTheme.bodySmall
              );
            }),
          ],
        ),
        Row(
          children: [
            Text('player 2 chooses ',
                style: Theme.of(context).textTheme.bodySmall),
            Obx(() {
              return Text(
                controller.gameViewModel.value.player1chooseX ? 'o' : 'x',
                //    style: Theme.of(context).textTheme.bodySmall
              );
            }),
          ],
        ),
      ],
    ),
    actions: [
      TextButton(
          onPressed: () {
            controller.shuffleXO();
          },
          child: const Text(
            'shuffleXO',
          )),
      TextButton(
          onPressed: () {
            controller.okFunction();
          },
          child: const Text(
            'ok',
          )),
    ],
  );
}
