import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextTitle extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final int? maxLines;
  final TextAlign? textAlign;
  TextTitle({
    Key? key,
    this.size = 30,
    required this.text,
    this.color = Colors.black,
    this.maxLines,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
