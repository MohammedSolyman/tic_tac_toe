import 'package:get/get.dart';
import 'package:tic_tac_toe/data_type/player.dart';
import 'package:tic_tac_toe/models/game_view_model.dart';
import 'package:tic_tac_toe/views/game_view/components/game_dialog.dart';

class GameController extends GetxController {
  Rx<GameViewModel> gameViewModel = GameViewModel().obs;

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

  void squareFunction(int index) {
    //put the symbol of the current player in the sqaure. only if this square is empty
    gameViewModel.update((val) {
      if (val!.gameList[index] == '') {
        val.gameList[index] = val.currentPlayer!.symbol;

        //change the turn
        _shuffleTurns();

        //check th winner
      }
    });
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
    await showGameDialog();
  }

  void getNames(String name1, String name2) {
    gameViewModel.update((val) {
      val!.plyerOneName = name1;
      val.plyerTwoName = name2;
    });
  }
}
