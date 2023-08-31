import 'package:get/get.dart';
import 'package:tic_tac_toe/models/game_view_model.dart';

class WinningCheckController extends GetxController {
  Rx<GameViewModel> gameViewModel = GameViewModel().obs;

  bool checkTie() {
    if (gameViewModel.value.gameList.contains('')) {
      return false;
    } else {
      return true;
    }
  }

  bool checkWinner() {
    if (_horizontal() || _vertical() || _diagonal()) {
      return true;
    } else {
      return false;
    }
  }

  bool _subHorizontal(int i) {
    if (gameViewModel.value.gameList[i] != '' &&
        gameViewModel.value.gameList[i] == gameViewModel.value.gameList[++i] &&
        gameViewModel.value.gameList[i] == gameViewModel.value.gameList[++i]) {
      return true;
    } else {
      return false;
    }
  }

  bool _horizontal() {
    if (_subHorizontal(0) || _subHorizontal(3) || _subHorizontal(6)) {
      return true;
    } else {
      return false;
    }
  }

  bool _subVertical(int i) {
    if (gameViewModel.value.gameList[i] != '' &&
        gameViewModel.value.gameList[i] ==
            gameViewModel.value.gameList[i += 3] &&
        gameViewModel.value.gameList[i] ==
            gameViewModel.value.gameList[i += 3]) {
      return true;
    } else {
      return false;
    }
  }

  bool _vertical() {
    if (_subVertical(0) || _subVertical(1) || _subVertical(2)) {
      return true;
    } else {
      return false;
    }
  }

  bool _subDiagonal(int i) {
    int j = (4 - i);

    if (gameViewModel.value.gameList[i] != '' &&
        gameViewModel.value.gameList[i] ==
            gameViewModel.value.gameList[i += j] &&
        gameViewModel.value.gameList[i] ==
            gameViewModel.value.gameList[i += j]) {
      return true;
    } else {
      return false;
    }
  }

  bool _diagonal() {
    if (_subDiagonal(0) || _subDiagonal(2)) {
      return true;
    } else {
      return false;
    }
  }
}
