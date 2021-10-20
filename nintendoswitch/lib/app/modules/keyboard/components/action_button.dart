import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/controller/keyboard_controller.dart';

class ActionButton extends StatelessWidget {
  final Widget widget;
  final double propBottom;
  final double propLeft;
  final Alignment gradientBegin;
  final Alignment gradientEnd;
  final double sizeButton;
  const ActionButton({
    Key? key,
    required this.widget,
    required this.propBottom,
    required this.propLeft,
    required this.gradientBegin,
    required this.gradientEnd,
    this.sizeButton = 28,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    KeyboardController keyboardController =
        KeyboardController.instanceSingleton;
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: size.height * propBottom,
      left: size.width * propLeft,
      child: Container(
        height: sizeButton,
        width: sizeButton,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: gradientBegin,
            end: gradientEnd,
            colors: [
              Color(int.parse('0xff7B8287')),
              Color(int.parse('0xff050F11')),
            ],
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              alignment: Alignment.center,
              height: constraints.maxWidth * 0.8,
              width: constraints.maxWidth * 0.8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(int.parse('0xff686D70')),
                    Color(int.parse('0xff050F11')),
                  ],
                ),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blue[100],
                  borderRadius: BorderRadius.circular(30),
                  onTap: () => keyboardController.lightOnOffEffect(),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        alignment: Alignment.center,
                        child: widget,
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
