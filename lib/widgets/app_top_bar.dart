import 'package:flutter/material.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.only(top: 50),
        width: double.infinity,
        // height: 0.15 * height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            transform: GradientRotation(174.84 * 3.14 / 180),
            colors: [
              Color(0xffbfe1f8),
              Color(0xff309fe7),
              Color(0xff2477ad),
            ],
            stops: [0.0, 0.6394, 1.4754],
          ),
        ),
        child: SafeArea(
            top: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: child,
            )));
  }
}
