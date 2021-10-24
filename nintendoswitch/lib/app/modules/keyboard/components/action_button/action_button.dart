import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/action_button/button_theme.dart';
import 'package:nintendoswitch/app/modules/keyboard/controller/keyboard_controller.dart';

enum ButtonAction { up, down, left, rigth, x, y, a, b }

//concluir enuns
class ActionButton extends StatelessWidget {
  final Color colorWidget;
  final double propBottom;
  final double propLeft;
  final double sizeButton;
  final ButtonAction buttonAction;
  ActionButton({
    Key? key,
    required this.propBottom,
    required this.propLeft,
    this.sizeButton = 28,
    this.buttonAction = ButtonAction.a,
    this.colorWidget = const Color(0xff000000),
  }) : super(key: key);

  final ButtonGradient gradientBig = ButtonGradient.big();
  final ButtonGradient gradientSmall = ButtonGradient.small();

  @override
  Widget build(BuildContext context) {
    BoxDecoration? boxDecorationBig;
    BoxDecoration? boxDecorationSmall;
    Widget? widgetCustom;

    if (buttonAction == ButtonAction.up || buttonAction == ButtonAction.x) {
      boxDecorationBig = gradientBig.downToTop();
      boxDecorationSmall = gradientSmall.downToTop();
      if (buttonAction == ButtonAction.up) {
        widgetCustom = const Icon(Icons.arrow_drop_up);
      } else {
        widgetCustom = Text(
          'X',
          style: TextStyle(color: colorWidget),
        );
      }
    } else if (buttonAction == ButtonAction.left ||
        buttonAction == ButtonAction.y) {
      boxDecorationBig = gradientBig.downToTop();
      boxDecorationSmall = gradientSmall.downToTop();
      if (buttonAction == ButtonAction.left) {
        widgetCustom = const Icon(Icons.arrow_left);
      } else {
        widgetCustom = Text(
          'Y',
          style: TextStyle(color: colorWidget),
        );
      }
    } else if (buttonAction == ButtonAction.rigth ||
        buttonAction == ButtonAction.a) {
      boxDecorationBig = gradientBig.rigthToLeft();
      boxDecorationSmall = gradientSmall.downToTop();
      if (buttonAction == ButtonAction.rigth) {
        widgetCustom = const Icon(Icons.arrow_right);
      } else {
        widgetCustom = Text(
          'A',
          style: TextStyle(color: colorWidget),
        );
      }
    } else if (buttonAction == ButtonAction.down ||
        buttonAction == ButtonAction.b) {
      boxDecorationBig = gradientBig.rigthToLeft();
      boxDecorationSmall = gradientSmall.downToTop();
      if (buttonAction == ButtonAction.down) {
        widgetCustom = const Icon(Icons.arrow_drop_down);
      } else {
        widgetCustom = Text(
          'B',
          style: TextStyle(color: colorWidget),
        );
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
        decoration: boxDecorationBig,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: Container(
                height: constraints.maxHeight * 0.8,
                width: constraints.maxWidth * 0.8,
                decoration: boxDecorationSmall,
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
                          child: widgetCustom,
                        );
                      },
                    ),
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
