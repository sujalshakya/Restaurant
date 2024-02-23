import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class MCQ extends StatefulWidget {
  const MCQ({Key? key}) : super(key: key);

  @override
  State<MCQ> createState() => _MCQState();
}

class _MCQState extends State<MCQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("images/ask_us.png"),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
            child: const Text(
              "Select level",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          //for(int i =0; i<10; i++)
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'quizPage');
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.94,
              height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02,
                  bottom: MediaQuery.of(context).size.width * 0.02),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffB3D0FF),
                    ),
                    child: const Center(
                        child: Text(
                      "1",
                      style: TextStyle(
                          color: Color(0xff0061FF),
                          fontSize: 40,
                          fontFamily: "lato",
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.015),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "programming",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Level 1",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}
