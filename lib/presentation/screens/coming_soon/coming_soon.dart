import 'package:flutter/material.dart';
import '../../widget/ad_helper.dart';
import '../../constants/colors.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        title: const Text("Stay Tuned",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        backgroundColor: AppColor.primary,
      ),
      body: Container(
          margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/ask_us.png"),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const Text("Coming Soon!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: "Lato",
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              const AppAds(),
            ],
          )),
    );
  }
}
