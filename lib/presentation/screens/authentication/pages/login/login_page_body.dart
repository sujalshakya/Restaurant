import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:iconsax/iconsax.dart';

import '../../../../constants/api_const.dart';
import '../../../../constants/constant.dart';
import '../../../../constants/text_normal.dart';
import '../../widgets/primart_blue_button.dart';
import '../../widgets/text_fields.dart';
import '../signUp/sign_up_page.dart';
import 'package:http/http.dart' as http;

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  SnackBar errorBar(String error) {
    return SnackBar(
      backgroundColor: Colors.white,
      content: Text(
        error,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.red),
      ),
    );
  }

  final wrongCredentials = const SnackBar(
    backgroundColor: Colors.white,
    content: Text(
      'Incorrect Username or Password',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red),
    ),
  );

  final noInternet = const SnackBar(
    backgroundColor: Colors.white,
    content: Text(
      'Please check your internet connection!',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red),
    ),
  );

  bool isLoading = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    login(String email, String password) async {
      Map<String, String> header = {"Content-Type": "application/json"};

      Map<String, String> data = {
        "email": email,
        "password": password,
      };

      try {
        await http
            .post(Uri.parse(ApiConst.login),
                headers: header, body: jsonEncode(data))
            .then((response) {
          if (response.statusCode == 200) {
            setState(() {
              isLoading = false;
              var jsonResponse = jsonDecode(response.body);

              var setting = Hive.box("settings");
              setting.put("loggedIn", true);

              var userInfoBox = Hive.box("userInfo");

              userInfoBox.put("token", jsonResponse["token"]);
              userInfoBox.put("id", jsonResponse["user"]["_id"]);
              userInfoBox.put("name", jsonResponse["user"]["name"]);
              userInfoBox.put("email", jsonResponse["user"]["email"]);
              userInfoBox.put("pic", jsonResponse["user"]["pic"]);

              Navigator.pushReplacementNamed(context, 'forum');
            });
          } else {
            setState(() {
              ScaffoldMessenger.of(context).showSnackBar(wrongCredentials);
              isLoading = false;
            });
          }
        });
      } catch (e) {
        setState(() {
          isLoading = false;
        });
        if (e.toString().contains('SocketException')) {
          ScaffoldMessenger.of(context).showSnackBar(errorBar(
              "Error connecting to the server. Please check your internet connection!"));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              errorBar("Error Occurred. Please try again later!"));
        }
      }
    }

    return isLoading
        ? Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextNormal(
                      text: "Welcome Back!\t",
                      size: 20,
                      fontFamily: '',
                    ),
                    TextNormal(
                      text: "Coders",
                      size: 22,
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: '',
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                GreyTextFields(
                  hintText: "Email",
                  icon: Iconsax.sms,
                  controller: emailController,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                GreyTextFields(
                    hintText: "Password",
                    icon: Iconsax.lock_circle,
                    isObsecure: true,
                    controller: passwordController),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                      onTap: () {
                        debugPrint("Clicked on forgot password button");
                      },
                      child: const TextNormal(
                        text: 'Forgot Password?',
                        color: blueTextColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: '',
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        isLoading = true;
                      });
                      login(emailController.text, passwordController.text);
                    },
                    child: const PrimartBlueButton(title: "Login")),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                // const Center(
                //     child: TextNormal(
                //   text: 'or login with?',
                //   color: subTextColor,
                //   fontWeight: FontWeight.w500,
                // )),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.015,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     InkWell(
                //         onTap: () {
                //           debugPrint("Clicked on auth google");
                //         },
                //         child: const CircularAuthButton(
                //             icon: 'assets/images/google.png')),
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width * 0.05,
                //     ),
                //     InkWell(
                //         onTap: () {
                //           debugPrint("Clicked on auth facebook");
                //         },
                //         child: const CircularAuthButton(
                //             icon: 'assets/images/facebook.png')),
                //   ],
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextNormal(
                      text: 'Don\'t have an account?\t',
                      color: subTextColor,
                      fontFamily: '',
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                        },
                        child: const TextNormal(
                          text: 'Sign Up',
                          color: blueTextColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: '',
                        )),
                  ],
                ),
              ],
            ),
          );
  }
}
