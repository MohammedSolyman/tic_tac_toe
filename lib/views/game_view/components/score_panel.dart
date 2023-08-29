import 'package:flutter/material.dart';

class ScorePanel extends StatelessWidget {
  const ScorePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [Text('player 1'), Text('2')],
        ),
        Column(
          children: [Text('player 2'), Text('5')],
        ),
      ],
    );
  }
}
