import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';

dialogWin() async {
  GameController controller = Get.put(GameController());

  await Get.defaultDialog(
    content: Column(
      children: [
        Row(
          children: [
            Obx(() {
              return Text(
                  '${controller.gameViewModel.value.currentPlayer!.name} (${controller.gameViewModel.value.currentPlayer!.symbol}) wins',
                  style: const TextStyle(fontSize: 20, color: Colors.black));
            }),
          ],
        ),
      ],
    ),
    actions: [
      TextButton(
          onPressed: () {},
          child: const Text('play again',
              style: TextStyle(
                fontSize: 20,
              ))),
      TextButton(
          onPressed: () {},
          child: const Text('exit',
              style: TextStyle(
                fontSize: 20,
              ))),
    ],
  );
}
