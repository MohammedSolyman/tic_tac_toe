import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    GameController controller = Get.put(GameController());

    return ElevatedButton(
        onPressed: () async {
          await controller.showGameDialog(context);
        },
        child: const Text('start a game'));
  }
}
