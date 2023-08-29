import 'package:get/get.dart';
import 'package:tic_tac_toe/models/welcome_view_model.dart';
import 'package:tic_tac_toe/views/game_view/game_view.dart';

class WelcomeController extends GetxController {
  Rx<WelcomeViewModel> welcomeViewModel = WelcomeViewModel().obs;

  goToGame() {
    Get.to(() => GameView(
        name1: welcomeViewModel.value.tecPlayer1.text,
        name2: welcomeViewModel.value.tecPlayer2.text));
  }
}
