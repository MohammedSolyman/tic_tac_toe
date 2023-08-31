import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tic_tac_toe/controllers/game_comtroller.dart';

dialogTie(BuildContext context) async {
  GameController controller = Get.put(GameController());

  await Get.defaultDialog(
    backgroundColor: Theme.of(context).primaryColorLight,
    title: '',
    barrierDismissible: false,
    content: Text('it is tie', style: Theme.of(context).textTheme.bodySmall

        //     TextStyle(fontSize: 20, color: Colors.black)

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
