import 'package:flutter/material.dart';

import '../../../constants/constant.dart';

class GreyTextFields extends StatelessWidget {
  const GreyTextFields(
      {super.key,
      required this.hintText,
      required this.icon,
      this.isObsecure = false,
      required this.controller});
  final String hintText;
  final IconData icon;
  final bool isObsecure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
            color: textFieldColor, borderRadius: BorderRadius.circular(6)),
        child: TextField(
          controller: controller,
          cursorColor: Colors.black,
          obscureText: isObsecure,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(icon),
              hintText: hintText,
              hintStyle: const TextStyle(fontFamily: 'Lato', fontSize: 16)),
        ));
  }
}
