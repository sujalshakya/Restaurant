import 'package:flutter/material.dart';
import '../../constants/colors.dart';

SnackBar endChapterResultSnackBar(
    BuildContext context, bool passed, int score, int totalScore) {
  return SnackBar(
    dismissDirection: DismissDirection.none,
    duration: const Duration(seconds: 30),
    // backgroundColor: passed ? Colors.greenAccent : Colors.redAccent,
    content: SizedBox(
      width: MediaQuery.of(context).size.width,
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     SizedBox(height: MediaQuery.of(context).size.height * 0.06),
      //     Container(
      //       height: MediaQuery.of(context).size.height * 0.4,
      //       width: MediaQuery.of(context).size.width * 0.8,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(15), color: Colors.white),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           const Text("Your Result",
      //               style: TextStyle(
      //                   color: AppColor.primary,
      //                   fontSize: 28,
      //                   fontWeight: FontWeight.bold)),
      //           Text(
      //             passed ? "Passed" : "Failed",
      //             style: const TextStyle(color: AppColor.primary, fontSize: 38),
      //           ),
      //           Text(
      //             'You scored $score',
      //             style: const TextStyle(color: AppColor.primary, fontSize: 38),
      //           ),
      //           GestureDetector(
      //             onTap: () {
      //               Navigator.pop(context);
      //               ScaffoldMessenger.of(context).hideCurrentSnackBar();
      //             },
      //             child: Container(
      //                 alignment: Alignment.center,
      //                 width: MediaQuery.of(context).size.width * 0.5,
      //                 height: MediaQuery.of(context).size.height * 0.05,
      //                 decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(15),
      //                     color: AppColor.primary),
      //                 child: const Text("Continue",
      //                     style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold))),
      //           )
      //         ],
      //       ),
      //     )
      //   ],
      // ),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            "GO Quiz Final Score",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  passed ? "Passed" : "Failed",
                  style: const TextStyle(
                      color: AppColor.primary,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "your score",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "$score/$totalScore",
                  style: const TextStyle(color: AppColor.primary, fontSize: 38),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.primary),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColor.primary),
                          child: const Text("Continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))),
                    )),
                const Text(
                  "Report Question",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
