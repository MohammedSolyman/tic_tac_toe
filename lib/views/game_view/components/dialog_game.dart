import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';

dialogGame() async {
  GameController controller = Get.put(GameController());

  await Get.defaultDialog(
    content: Column(
      children: [
        Row(
          children: [
            const Text('playerone chooses: ',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            Obx(() {
              return Text(
                  controller.gameViewModel.value.player1chooseX ? 'x' : 'o',
                  style: const TextStyle(fontSize: 20, color: Colors.black));
            }),
          ],
        ),
        Row(
          children: [
            const Text('playertwo chooses: ',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            Obx(() {
              return Text(
                  controller.gameViewModel.value.player1chooseX ? 'o' : 'x',
                  style: const TextStyle(fontSize: 20, color: Colors.black));
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
          child: const Text('shuffleXO',
              style: TextStyle(
                fontSize: 20,
              ))),
      TextButton(
          onPressed: () {
            controller.okFunction();
          },
          child: const Text('ok',
              style: TextStyle(
                fontSize: 20,
              ))),
    ],
  );
}
