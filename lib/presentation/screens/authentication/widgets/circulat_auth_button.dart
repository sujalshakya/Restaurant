import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants/constant.dart';

class CircularAuthButton extends StatelessWidget {
  const CircularAuthButton({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: authButtonColor, borderRadius: BorderRadius.circular(25)),
        child: Image.asset(icon));
  }
}
