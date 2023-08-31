import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tic_tac_toe/controllers/game_comtroller.dart';

dialogTie() async {
  GameController controller = Get.put(GameController());

  await Get.defaultDialog(
    barrierDismissible: false,
    content: const Text('it is tie',
        style: TextStyle(fontSize: 20, color: Colors.black)),
    actions: [
      TextButton(
          onPressed: () {
            controller.restart();
          },
          child: const Text('play again',
              style: TextStyle(
                fontSize: 20,
              ))),
      TextButton(
          onPressed: () {
            controller.goBackToWelcome();
          },
          child: const Text('exit',
              style: TextStyle(
                fontSize: 20,
              ))),
    ],
  );
}
