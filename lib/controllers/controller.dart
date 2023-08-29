import 'package:get/get.dart';
import 'package:tic_tac_toe/models/welcome_view_model.dart';
import 'package:tic_tac_toe/views/game_view/game_view.dart';

class Controller extends GetxController {
  Rx<WelcomeViewModel> welcomeViewModel = WelcomeViewModel().obs;

  goToGame() {
    Get.to(() => const GameView());
  }
}
