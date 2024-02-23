import 'package:flutter/material.dart';

import 'text_normal.dart';

ElevatedButton bottomNavBarButton(BuildContext context, String text,
    Color bgColor, Color textColor, void Function()? onPressed) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: Size(MediaQuery.of(context).size.width * 0.4,
            MediaQuery.of(context).size.height * 0.05),
      ),
      onPressed: onPressed,
      child: TextNormal(
        text: text,
        size: 16,
        color: textColor,
        fontFamily: 'Lato',
      ));
}
