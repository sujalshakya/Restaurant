import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../widget/dark_mode.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(fontFamily: "Lato"),
        ),
        backgroundColor: AppColor.primary,
      ),
      body: Container(
        color: DarkMode.isDarkMode
            ? const Color.fromARGB(255, 33, 33, 33)
            : const Color.fromARGB(255, 219, 219, 219),
        child: Stack(
          children: [
            Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                left: MediaQuery.of(context).size.width * 0.038,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 7,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      decoration: BoxDecoration(
                          color:
                              DarkMode.isDarkMode ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.085),
                        width: MediaQuery.of(context).size.width * 0.92,
                        child: Column(
                          children: [
                            Text(
                              "Dinga Vinga",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.bold,
                                  color: DarkMode.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              "",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w200,
                                  color: DarkMode.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Transform the way you learn with our innovative apps and services, designed to help you think, create, and learn like never before.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Lato",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: DarkMode.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),
                      )),
                )),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.23,
              left: MediaQuery.of(context).size.width * 0.34,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.07,
                child: Image.asset(
                  'images/logo/company_logo.jpg',
                ),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row iconBuilder(BuildContext context, Icon icon, String text) {
    return Row(children: [
      Container(
          width: MediaQuery.of(context).size.width * 0.09,
          height: MediaQuery.of(context).size.height * 0.04,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
          ),
          child: icon),
      const SizedBox(width: 10),
      Text(
        text,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: DarkMode.isDarkMode ? Colors.white : Colors.black),
      ),
    ]);
  }
}
