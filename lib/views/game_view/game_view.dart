import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';
import 'package:tic_tac_toe/views/game_view/components/land_scape_game_view.dart';
import 'package:tic_tac_toe/views/game_view/components/portrait_game_view.dart';

class GameView extends StatelessWidget {
  const GameView({required this.name1, required this.name2, super.key});

  final String name1;
  final String name2;
  @override
  Widget build(BuildContext context) {
    GameController controller = Get.put(GameController());
    controller.getNames(name1, name2);
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return const PortraitGameView();
    } else {
      return const LandscapeGameView();
    }
  }
}
