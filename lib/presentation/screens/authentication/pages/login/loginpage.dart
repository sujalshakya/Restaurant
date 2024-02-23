import 'package:flutter/material.dart';

import 'login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          //vector Image
          Positioned(
              top: 0, right: 0, child: Image.asset("assets/images/Vector.png")),

          //body of login page
          Positioned(
              top: MediaQuery.of(context).size.height * 0.28,
              bottom: 0,
              left: 0,
              right: 0,
              child: const SingleChildScrollView(child: LoginPageBody()))
        ],
      ),
    ));
  }
}
