import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class FinalScore extends StatefulWidget {
  const FinalScore({Key? key}) : super(key: key);

  @override
  State<FinalScore> createState() => _FinalScoreState();
}

class _FinalScoreState extends State<FinalScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "cplusplusplus Quiz Final Score",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.currency_bitcoin_outlined,
                      color: Colors.yellow,
                    ),
                    Text(
                      "300",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.all(5),
                    child: const Text(
                      "Total Score: 50",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
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
                  const Text(
                    "Congratulation",
                    style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "your score",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    "18/20",
                    style: TextStyle(color: AppColor.primary, fontSize: 38),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColor.primary),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          ),
                          Text(
                            "Play Again",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
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
}
