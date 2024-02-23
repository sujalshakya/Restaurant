import 'package:flutter/material.dart';

import '../../../constants/constant.dart';

class PrimartBlueButton extends StatelessWidget {
  const PrimartBlueButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
              fontFamily: 'Lato',
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
      ),
    );
  }
}
