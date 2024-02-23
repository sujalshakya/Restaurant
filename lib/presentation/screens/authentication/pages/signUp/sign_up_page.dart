import 'package:flutter/material.dart';

import 'signup_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.67,
            right: 0,
            child: Image.asset('assets/images/Vector.png'),
          ),
          const Positioned(child: SignUpBody()),
        ],
      )),
    );
  }
}
