import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/controllers/game_comtroller.dart';
import 'package:google_fonts/google_fonts.dart';

dialogGame(BuildContext context) async {
  GameController controller = Get.put(GameController());

  // Widget widget = Obx(() {
  //   return Center(
  //     child: Material(
  //       child: Container(
  //         width: MediaQuery.of(context).size.width * 0.75,
  //         height: MediaQuery.of(context).size.height * 0.25,
  //         decoration: BoxDecoration(
  //             color: Theme.of(context).primaryColorLight,
  //             border:
  //                 Border.all(width: 3, color: Theme.of(context).primaryColor),
  //             borderRadius: const BorderRadius.all(Radius.circular(15))),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: [
  //             Column(
  //               children: [
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                   children: [
  //                     SizedBox(
  //                       width: MediaQuery.of(context).size.width * 0.60,
  //                       child: AutoSizeText('player 1 chooses ',
  //                           maxLines: 1,
  //                           minFontSize: 5,
  //                           style: Theme.of(context).textTheme.bodySmall),
  //                     ),
  //                     controller.gameViewModel.value.player1chooseX
  //                         ? SmallX(
  //                             width: MediaQuery.of(context).size.width * 0.15)
  //                         : SmallO(
  //                             width: MediaQuery.of(context).size.width * 0.15)
  //                   ],
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                   children: [
  //                     SizedBox(
  //                       width: MediaQuery.of(context).size.width * 0.60,
  //                       child: AutoSizeText('player 2 chooses ',
  //                           maxLines: 1,
  //                           minFontSize: 5,
  //                           style: Theme.of(context).textTheme.bodySmall),
  //                     ),
  //                     controller.gameViewModel.value.player1chooseX
  //                         ? SmallO(
  //                             width: MediaQuery.of(context).size.width * 0.15)
  //                         : SmallX(
  //                             width: MediaQuery.of(context).size.width * 0.15)
  //                   ],
  //                 ),
  //               ],
  //             ),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceAround,
  //               children: [
  //                 InkWell(
  //                   onTap: () {
  //                     controller.shuffleXO();
  //                   },
  //                   child: AutoSizeText(
  //                     'shuffle',
  //                     maxLines: 1,
  //                     minFontSize: 5,
  //                     style: Theme.of(context).textTheme.bodySmall,
  //                   ),
  //                 ),
  //                 InkWell(
  //                   onTap: () {
  //                     controller.okFunction();
  //                   },
  //                   child: AutoSizeText(
  //                     'ok',
  //                     maxLines: 1,
  //                     minFontSize: 5,
  //                     style: Theme.of(context).textTheme.bodySmall,
  //                   ),
  //                 ),
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // });

  // await Get.dialog(widget);

  await Get.defaultDialog(
    backgroundColor: Theme.of(context).primaryColorLight,
    title: '',
    content: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 4,
              child: AutoSizeText('player 1 chooses ',
                  maxLines: 1,
                  minFontSize: 5,
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            Obx(() {
              String symbol =
                  controller.gameViewModel.value.player1chooseX ? 'x' : 'o';
              return Expanded(
                child: Center(
                  child: AutoSizeText(symbol,
                      maxLines: 1,
                      // minFontSize: 5,
                      style: GoogleFonts.pressStart2p(
                          color: symbol == 'x' ? Colors.green : Colors.red)),
                ),
              );
            }),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 4,
              child: AutoSizeText('player 2 chooses ',
                  maxLines: 1,
                  //  minFontSize: 5,
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            Obx(() {
              String symbol =
                  controller.gameViewModel.value.player1chooseX ? 'o' : 'x';
              return Expanded(
                child: Center(
                  child: AutoSizeText(symbol,
                      maxLines: 1,
                      // minFontSize: 5,
                      style: GoogleFonts.pressStart2p(
                          color: symbol == 'x' ? Colors.green : Colors.red)),
                ),
              );
            }),
          ],
        ),
      ],
    ),
    actions: [
      TextButton(
          onPressed: () {
            controller.shuffleXO();
          },
          child: const Text(
            'shuffle',
          )),
      TextButton(
          onPressed: () {
            controller.okFunction();
          },
          child: const Text(
            'ok',
          )),
    ],
  );
}

// class SmallX extends StatelessWidget {
//   const SmallX({required this.width, super.key});
//   final double width;

//   @override
//   Widget build(BuildContext context) {
//     return AutoSizeText('x',
//         style: GoogleFonts.pressStart2p(
//           color: Colors.green,
//         ));
//   }
// }

// class SmallO extends StatelessWidget {
//   const SmallO({required this.width, super.key});
//   final double width;

//   @override
//   Widget build(BuildContext context) {
//     return AutoSizeText('o',
//         style: GoogleFonts.pressStart2p(
//           color: Colors.red,
//         ));
//   }
// }
