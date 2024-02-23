import 'package:flutter/material.dart';

import 'constant.dart';

class TextNormal extends StatelessWidget {
  final double size;
  final String? text;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  const TextNormal(
      {Key? key,
      this.size = 16,
      required this.text,
      this.color = Colors.black,
      this.fontWeight = FontWeight.normal,
      this.maxLines,
      this.overflow,
      this.textAlign = TextAlign.left,
      required String fontFamily})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
            fontFamily: "Lato",
            color: color,
            fontSize: size == 14 ? fontSize14 : size,
            fontWeight: fontWeight,
            overflow: overflow));
  }
}
