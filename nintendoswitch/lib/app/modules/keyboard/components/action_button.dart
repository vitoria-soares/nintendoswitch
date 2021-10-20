import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/controller/keyboard_controller.dart';

enum ButtonAction { up, down, left, rigth, x, y, a, b }

//concluir enuns
class ActionButton extends StatelessWidget {
  final Widget widget;
  final double propBottom;
  final double propLeft;
  final Alignment gradientBegin;
  final Alignment gradientEnd;
  final double sizeButton;
  final ButtonAction buttons;
  const ActionButton({
    Key? key,
    required this.widget,
    required this.propBottom,
    required this.propLeft,
    required this.gradientBegin,
    required this.gradientEnd,
    this.sizeButton = 28,
    this.buttons = ButtonAction.a,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LinearGradient gradienteFrontActionButtonBig =
        LinearGradient(begin: gradientBegin, end: gradientEnd, colors: const [
      Color(0xff7B8287),
      Color(0xff050F11),
    ]);
    const LinearGradient gradienteBackActionButtonBig = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff686D70),
        Color(0xff050F11),
      ],
    );
    const LinearGradient gradienteFrontActionButtonSmall = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff686D70),
        Color(0xff050F11),
      ],
    );
    var gradienteFront;
    var gradinteBack;
    var widget;
    if (ButtonAction.up == buttons || ButtonAction.x == buttons) {
      //up left bg
      gradinteBack = gradienteBackActionButtonBig;
      gradienteFront = gradienteBackActionButtonBig;
      if (ButtonAction.up == buttons) {
        widget = const Icon(Icons.arrow_drop_up);
      } else if (ButtonAction.x == buttons) {
        widget = const Text('X');
      }
    }
    if (ButtonAction.left == buttons || ButtonAction.y == buttons) {
      gradinteBack = gradienteBackActionButtonBig;
      gradienteFront = gradienteFrontActionButtonBig;
      if (ButtonAction.left == buttons) {
        widget = const Icon(Icons.arrow_left);
      } else if (ButtonAction.y == buttons) {
        widget = const Text('Y');
      }
    }
    if (ButtonAction.rigth == buttons || ButtonAction.a == buttons) {
      gradinteBack = gradienteBackActionButton;
      gradienteFront = gradienteFrontActionButton;
      if (ButtonAction.rigth == buttons) {
        widget = const Icon(Icons.arrow_right);
      } else if (ButtonAction.a == buttons) {
        widget = const Text('A');
      }
    }

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
