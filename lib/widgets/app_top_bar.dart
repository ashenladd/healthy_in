import 'package:flutter/material.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 50),
        width: width,
        height: 0.15 * height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(36, 119, 173, 1.0),
              Color.fromRGBO(48, 159, 231, 1.0),
              Color.fromRGBO(191, 225, 248, 1.0)
            ])),
        child: child);
  }
}
