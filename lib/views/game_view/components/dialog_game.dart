import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';
import 'package:google_fonts/google_fonts.dart';

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
              String symbol =
                  controller.gameViewModel.value.player1chooseX ? 'x' : 'o';
              return Text(symbol,
                  style: GoogleFonts.pressStart2p(
                      color: symbol == 'x' ? Colors.green : Colors.red));
            }),
          ],
        ),
        Row(
          children: [
            Text('player 2 chooses ',
                style: Theme.of(context).textTheme.bodySmall),
            Obx(() {
              String symbol =
                  controller.gameViewModel.value.player1chooseX ? 'o' : 'x';
              return Text(symbol,
                  style: GoogleFonts.pressStart2p(
                      color: symbol == 'x' ? Colors.green : Colors.red));
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
            'shuffle',
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
