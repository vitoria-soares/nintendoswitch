import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/side/left_side.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/side/right_side.dart';
import 'package:nintendoswitch/app/modules/screen/components/lamp.dart';
import 'package:nintendoswitch/app/modules/screen/components/small_logo.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
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
          child: Stack(
            //alignment: Alignment.center,
            children: const [
              Lamp(propLeft: 0.03864, propBotton: 0.22418, isOn: true),
              Lamp(propLeft: 0.03864, propBotton: 0.20415, isOn: false),
              Lamp(propLeft: 0.03864, propBotton: 0.18615, isOn: false),
              Lamp(propLeft: 0.03864, propBotton: 0.16712, isOn: false),
              SmallLogo(),
              Lamp(propLeft: 0.28744, propBotton: 0.22418, isOn: false),
              Lamp(propLeft: 0.28744, propBotton: 0.20415, isOn: false),
              Lamp(propLeft: 0.28744, propBotton: 0.18615, isOn: false),
              Lamp(propLeft: 0.28744, propBotton: 0.16712, isOn: false),
            ],
          ),
        ),
        const Expanded(
          flex: 32851,
          child: RightSide(),
        ),
      ],
    );
  }
}
