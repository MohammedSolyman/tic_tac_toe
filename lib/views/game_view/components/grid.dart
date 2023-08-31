import 'package:flutter/material.dart';
import 'package:tic_tac_toe/views/game_view/components/square.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemCount: 9,
            itemBuilder: (BuildContext context, int index) {
              return Square(
                index: index,
              );
            }),
      ),
    );
  }
}
