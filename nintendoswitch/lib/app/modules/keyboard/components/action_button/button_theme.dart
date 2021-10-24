import 'package:flutter/material.dart';

class ButtonGradient {
  late Color darkerColor;
  late Color lighterColor;

  ButtonGradient.big({
    this.darkerColor = const Color(0xff7B8287),
    this.lighterColor = const Color(0xff050F11),
  });

  ButtonGradient.small({
    this.darkerColor = const Color(0xff686D70),
    this.lighterColor = const Color(0xff050F11),
  });

  BoxDecoration downToTop() {
    return BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [darkerColor, lighterColor],
      ),
    );
  }

  BoxDecoration rigthToLeft() {
    return BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [lighterColor, darkerColor],
      ),
    );
  }
}
