import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextNormal extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final String fontFamily;
  final int? maxLines;
  TextNormal({
    Key? key,
    this.size = 20,
    required this.text,
    required this.fontFamily,
    this.color = Colors.black45,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: fontFamily,
      ),
      maxLines: maxLines,
    );
  }
}
