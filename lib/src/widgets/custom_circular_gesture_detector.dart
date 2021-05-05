import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCircularGestureDetector extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String imagePath;
  final double diameter;

  CustomCircularGestureDetector({
    @required this.onPressed,
    this.imagePath,
    this.diameter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: diameter,
      width: diameter,
      child: GestureDetector(
        onTap: onPressed,
        child: Center(
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
