import 'package:flutter/cupertino.dart';

class CustomScaffoldBottomBarWidget extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  const CustomScaffoldBottomBarWidget(
      {Key? key, required this.child, this.backgroundColor, this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}