import 'package:flutter/material.dart';
import 'package:tic_tac_toe/views/game_view/land_scape_game_view.dart';
import 'package:tic_tac_toe/views/game_view/portrait_game_view.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return const PortraitGameView();
    } else {
      return const LandscapeGameView();
    }
  }
}
