import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constants/api_const.dart';
import '../../../../constants/constant.dart';
import '../../../../constants/text_normal.dart';
import '../../widgets/primart_blue_button.dart';
import '../../widgets/text_fields.dart';
import '../login/loginpage.dart';
import 'package:http/http.dart' as http;

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
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

  SnackBar successBar(String successMessage) {
    return SnackBar(
      backgroundColor: Colors.white,
      content: Text(
        successMessage,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.green),
      ),
    );
  }

  final SnackBar noInternet = const SnackBar(
    backgroundColor: Colors.white,
    content: Text(
      'Please check your internet connection!',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red),
    ),
  );

  bool isLoading = false;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double pixel20 = MediaQuery.of(context).size.height * 0.027;
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Padding(
            padding: EdgeInsets.only(left: pixel20, top: 30, right: pixel20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextNormal(
                    text: "Create an Account!",
                    size: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: '',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),

                  //facebook and google button
                  // const TransparentButton(
                  //     title: "Sign in with Google",
                  //     icon: 'assets/images/google.png'),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.02,
                  // ),
                  // const TransparentButton(
                  //     title: "Continue with Facebook",
                  //     icon: 'assets/images/facebook.png'),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.055,
                  ),

                  const TextNormal(
                    text: "Signup with Email",
                    fontWeight: FontWeight.w600,
                    size: 20,
                    fontFamily: '',
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.030),
                  GreyTextFields(
                    hintText: "Username",
                    icon: Iconsax.user,
                    controller: usernameController,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  //text fields
                  GreyTextFields(
                      hintText: "Enter your email",
                      icon: Iconsax.sms,
                      controller: emailController),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  GreyTextFields(
                      hintText: "Enter your password",
                      icon: Iconsax.lock_circle,
                      controller: passwordController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.045,
                  ),

                  //sign UP button
                  InkWell(
                      onTap: () {
                        setState(() {
                          isLoading = true;
                          register(usernameController.text,
                              emailController.text, passwordController.text);
                        });
                      },
                      child: const PrimartBlueButton(
                        title: "Sign Up",
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextNormal(
                        text: 'Already a member?\t',
                        color: subTextColor,
                        fontFamily: '',
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                          },
                          child: const TextNormal(
                            text: 'Log in',
                            color: blueTextColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: '',
                          )),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  register(String username, String email, String password) async {
    Map<String, String> header = {"Content-Type": "application/json"};

    Map<String, String> data = {
      "name": username,
      "email": email,
      "password": password,
    };

    try {
      await http
          .post(Uri.parse(ApiConst.register),
              headers: header, body: jsonEncode(data))
          .then((response) {
        if (response.statusCode == 200) {
          setState(() {
            isLoading = false;
          });
          ScaffoldMessenger.of(context)
              .showSnackBar(successBar("Registered Successfully!"));
          Navigator.of(context).pushNamed('loginPage');
        } else {
          setState(() {
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
        ScaffoldMessenger.of(context)
            .showSnackBar(errorBar("Error Occurred. Please try again later!"));
      }
    }
  }
}
