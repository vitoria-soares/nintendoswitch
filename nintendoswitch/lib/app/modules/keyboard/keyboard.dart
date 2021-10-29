import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/side/left_side.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/side/right_side.dart';
import 'package:nintendoswitch/app/modules/keyboard/controller/keyboard_controller.dart';
import 'package:nintendoswitch/app/modules/screen/components/lamp.dart';
import 'package:nintendoswitch/app/modules/screen/components/logo_r.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  KeyboardController keyboardController = KeyboardController.instanceSingleton;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 32851,
          child: LeftSide(),
        ),
        Expanded(
          flex: 34299,
          child: AnimatedBuilder(
              animation: keyboardController,
              builder: (_, __) {
                return Stack(
                  children: [
                    Lamp(
                        propLeft: 0.03864,
                        propBotton: 0.22418,
                        isOn: keyboardController.lightOn[0]),
                    Lamp(
                        propLeft: 0.03864,
                        propBotton: 0.20415,
                        isOn: keyboardController.lightOn[1]),
                    Lamp(
                        propLeft: 0.03864,
                        propBotton: 0.18615,
                        isOn: keyboardController.lightOn[2]),
                    Lamp(
                        propLeft: 0.03864,
                        propBotton: 0.16712,
                        isOn: keyboardController.lightOn[3]),
                    LogoR(size: 55, color: Color(int.parse('0xff000000'))),
                    Lamp(
                        propLeft: 0.28744,
                        propBotton: 0.22418,
                        isOn: keyboardController.lightOn[4]),
                    Lamp(
                        propLeft: 0.28744,
                        propBotton: 0.20415,
                        isOn: keyboardController.lightOn[5]),
                    Lamp(
                        propLeft: 0.28744,
                        propBotton: 0.18615,
                        isOn: keyboardController.lightOn[6]),
                    Lamp(
                        propLeft: 0.28744,
                        propBotton: 0.16712,
                        isOn: keyboardController.lightOn[7]),
                  ],
                );
              }),
        ),
        const Expanded(
          flex: 32851,
          child: RightSide(),
        ),
      ],
    );
  }
}
