import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';

class Square extends StatelessWidget {
  const Square({required this.index, super.key});

  final int index;
  @override
  Widget build(BuildContext context) {
    GameController controller = Get.put(GameController());
    // String s;

    return InkWell(
      onTap: () async {
        await controller.squareFunction(index, context);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            border: Border.all(
                color: Theme.of(context).primaryColorLight, width: 3)),
        child: Center(child: Obx(() {
          return Text(controller.gameViewModel.value.gameList[index],
              style: Theme.of(context).textTheme.bodyMedium);
        })),
      ),
    );
  }
}
