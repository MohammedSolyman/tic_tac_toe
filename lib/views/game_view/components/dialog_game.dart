import 'package:auto_size_text/auto_size_text.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 4,
              child: AutoSizeText('player 1 chooses ',
                  maxLines: 1,
                  minFontSize: 1,
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            Obx(() {
              String symbol =
                  controller.gameViewModel.value.player1chooseX ? 'x' : 'o';
              return Expanded(
                child: Center(
                  child: AutoSizeText(symbol,
                      maxLines: 1,
                      minFontSize: 1,
                      style: GoogleFonts.pressStart2p(
                          color: symbol == 'x' ? Colors.green : Colors.red)),
                ),
              );
            }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 4,
              child: AutoSizeText('player 2 chooses ',
                  maxLines: 1,
                  minFontSize: 1,
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            Obx(() {
              String symbol =
                  controller.gameViewModel.value.player1chooseX ? 'o' : 'x';
              return Expanded(
                child: Center(
                  child: AutoSizeText(symbol,
                      maxLines: 1,
                      minFontSize: 1,
                      style: GoogleFonts.pressStart2p(
                          color: symbol == 'x' ? Colors.green : Colors.red)),
                ),
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
