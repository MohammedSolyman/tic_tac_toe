import 'package:tic_tac_toe/data_type/player.dart';

class GameViewModel {
  String? plyerOneName;
  String? plyerTwoName;
  Player? plyerOne;
  Player? plyerTwo;
  Player? currentPlayer;
  bool player1chooseX = true;
  bool startPlay = false;
  List<String> gameList = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
}
