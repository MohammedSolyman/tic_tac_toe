import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/winning_check_controller.dart';
import 'package:tic_tac_toe/data_type/player.dart';
import 'package:tic_tac_toe/views/game_view/components/dialog_game.dart';
import 'package:tic_tac_toe/views/game_view/components/dialog_tie.dart';
import 'package:tic_tac_toe/views/game_view/components/dialog_win.dart';

class GameController extends WinningCheckController {
  void shuffleXO() {
    gameViewModel.update((val) {
      val!.player1chooseX = !(val.player1chooseX);
    });
  }

  void _shuffleTurns() {
    gameViewModel.update((val) {
      if (val!.currentPlayer == val.plyerOne) {
        val.currentPlayer = val.plyerTwo;
      } else {
        val.currentPlayer = val.plyerOne;
      }
    });
  }

  Future<void> squareFunction(int index) async {
    //put the symbol of the current player in the sqaure. only if this square is empty
    gameViewModel.update((val) {
      if (val!.gameList[index] == '') {
        val.gameList[index] = val.currentPlayer!.symbol;
      }
    });

    //check the winner
    if (checkWinner()) {
      await dialogWin();
    } else if (checkTie()) {
      await dialogTie();
    } else {
      //change the turn
      _shuffleTurns();
    }
  }

  okFunction() {
    gameViewModel.update((val) {
      // assign 'x' and 'o' to the apprpriate players, and create players objects
      String plyer1Symbol = val!.player1chooseX ? 'x' : 'o';
      String plyer2Symbol = val.player1chooseX ? 'o' : 'x';

      val.plyerOne = Player(symbol: plyer1Symbol, name: val.plyerOneName ?? '');
      val.plyerTwo = Player(symbol: plyer2Symbol, name: val.plyerTwoName ?? '');

      //show the grid
      val.startPlay = true;

      //decide the current player
      val.currentPlayer = val.plyerOne;
    });

    //close the dialog
    Get.back();
  }

  Future<void> showDialog() async {
    await dialogGame();
  }

  void getNames(String name1, String name2) {
    gameViewModel.update((val) {
      val!.plyerOneName = name1;
      val.plyerTwoName = name2;
    });
  }
}
