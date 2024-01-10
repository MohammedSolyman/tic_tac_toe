import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/welcome_controller.dart';
import 'package:tic_tac_toe/views/welcome_view/components/my_form.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    WelcomeController controller = Get.find<WelcomeController>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  MyTextFormField(
                    tec: controller.welcomeViewModel.value.tecPlayer1,
                    label: 'player 1 name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyTextFormField(
                    tec: controller.welcomeViewModel.value.tecPlayer2,
                    label: 'player 2 name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        controller.goToGame();
                      },
                      child: const Text('go'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
