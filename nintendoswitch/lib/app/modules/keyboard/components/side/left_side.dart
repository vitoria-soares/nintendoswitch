import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/action_button.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/big_button.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/signal_button.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/sound.dart';

class LeftSide extends StatefulWidget {
  const LeftSide({Key? key}) : super(key: key);

  @override
  State<LeftSide> createState() => _LeftSideState();
}

class _LeftSideState extends State<LeftSide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 0, 189, 221),
        borderRadius: BorderRadius.only(topRight: Radius.circular(85)),
      ),
      child: Stack(
        children: [
          const SignalButton(
            isPlus: false,
            propLeft: 0.03864,
            propBottom: 0.34511,
            // propLeft: 0.03864,
            // propBottom: 0.35462,
          ),
          BigButton(
            positionalBottom: 0.23166,
            positionalLeft: 0.10024,
            sizeButton: MediaQuery.of(context).size.width * 0.155,
          ),
          const ActionButton(
            widget: Icon(Icons.arrow_drop_up),
            propBottom: 0.16576,
            propLeft: 0.13768,
            gradientBegin: Alignment.topCenter,
            gradientEnd: Alignment.bottomCenter,
          ),
          const ActionButton(
            widget: Icon(Icons.arrow_left),
            propBottom: 0.12432,
            propLeft: 0.06160,
            gradientBegin: Alignment.topCenter,
            gradientEnd: Alignment.bottomCenter,
          ),
          const ActionButton(
            widget: Icon(Icons.arrow_right),
            propBottom: 0.12432,
            propLeft: 0.21619,
            gradientEnd: Alignment.centerRight,
            gradientBegin: Alignment.centerLeft,
          ),
          const ActionButton(
            widget: Icon(Icons.arrow_drop_down),
            propBottom: 0.08289,
            propLeft: 0.13768,
            gradientEnd: Alignment.centerRight,
            gradientBegin: Alignment.centerLeft,
          ),
          const Sound(),
        ],
      ),
    );
  }
}
