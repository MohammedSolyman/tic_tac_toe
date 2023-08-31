import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';
import 'package:tic_tac_toe/views/game_view/components/grid.dart';
import 'package:tic_tac_toe/views/game_view/components/legend.dart';
import 'package:tic_tac_toe/views/game_view/components/my_menu.dart';
import 'package:tic_tac_toe/views/game_view/components/score_panel.dart';

class PortraitGameView extends StatelessWidget {
  const PortraitGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyPopupMenu(),
              SizedBox(
                height: 20,
              ),
              ScorePanel(),
              GridOrBUtton(),
              Legend()
            ],
          ),
        ),
      ),
    );
  }
}

class GridOrBUtton extends StatelessWidget {
  const GridOrBUtton({super.key});

  @override
  Widget build(BuildContext context) {
    GameController controller = Get.put(GameController());
    return Obx(() {
      if (controller.gameViewModel.value.startPlay) {
        return const Grid();
      } else {
        return const InfoButton();
      }
    });
  }
}

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
