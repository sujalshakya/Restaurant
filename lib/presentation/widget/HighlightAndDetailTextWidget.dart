import 'package:flutter/material.dart';

class HighlightAndDetailTextWidget extends StatelessWidget {
  final String slogan;
  final String subtitle;
  final bool isSpaceShorter;
  const HighlightAndDetailTextWidget({
    Key? key,
    required this.slogan,
    required this.subtitle,
    this.isSpaceShorter = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(slogan,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4),
        Text(subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: Colors.black, overflow: TextOverflow.clip)),
      ],
    );
  }
}
