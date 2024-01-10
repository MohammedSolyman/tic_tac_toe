import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';
import 'package:tic_tac_toe/views/game_view/components/grid_or_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';
import 'package:tic_tac_toe/views/game_view/components/grid.dart';
import 'package:tic_tac_toe/views/game_view/components/legend.dart';
import 'package:tic_tac_toe/views/game_view/components/my_menu.dart';
import 'package:tic_tac_toe/views/game_view/components/score_panel.dart';

class GameView extends StatelessWidget {
  const GameView({required this.name1, required this.name2, super.key});

  final String name1;
  final String name2;
  @override
  Widget build(BuildContext context) {
    GameController controller = Get.put(GameController());
    controller.getNames(name1, name2);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyPopupMenu(),
              SizedBox(
                height: 20,
              ),
              ScorePanel(),
              GridOrButton(),
              Legend()
            ],
          ),
        ),
      ),
    );
  }
}
