import 'package:flutter/material.dart';

import '../../../constants/text_normal.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({super.key, required this.title, required this.icon});
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    double pixel12 = MediaQuery.of(context).size.height * 0.016;
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: pixel12, vertical: pixel12),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 0.7),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        children: [
          Image.asset(icon),
          SizedBox(width: MediaQuery.of(context).size.width * 0.2),
          TextNormal(
            text: title,
            size: 16,
            fontFamily: '',
          ),
        ],
      ),
    );
  }
}
