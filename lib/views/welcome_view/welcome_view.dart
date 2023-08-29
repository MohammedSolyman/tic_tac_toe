import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/controller.dart';
import 'package:tic_tac_toe/views/welcome_view/components/my_form.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.find<Controller>();

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                MyTextFormField(
                  tec: TextEditingController(),
                  label: 'player one name',
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextFormField(
                  tec: TextEditingController(),
                  label: 'player one name',
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.goToGame();
                    },
                    child: const Text('play'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
