import 'package:flutter/material.dart';
import 'package:get/get.dart';

dialogTie() async {
  await Get.defaultDialog(
    content: const Text('it is tie',
        style: TextStyle(fontSize: 20, color: Colors.black)),
    actions: [
      TextButton(
          onPressed: () {},
          child: const Text('play again',
              style: TextStyle(
                fontSize: 20,
              ))),
      TextButton(
          onPressed: () {},
          child: const Text('exit',
              style: TextStyle(
                fontSize: 20,
              ))),
    ],
  );
}
