import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/action_button/action_button.dart';
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
      decoration: BoxDecoration(
        color: Color(int.parse('0xff00BDDD')),
        borderRadius: const BorderRadius.only(topRight: Radius.circular(85)),
      ),
      child: Stack(
        children: [
          const SignalButton(
            isPlus: false,
            propLeft: 0.03864,
            propBottom: 0.34511,
          ),
          BigButton(
            positionalBottom: 0.23166,
            positionalLeft: 0.10024,
            sizeButton: MediaQuery.of(context).size.width * 0.155,
          ),
          ActionButton(
            buttonAction: ButtonAction.up,
            propBottom: 0.16576,
            propLeft: 0.13768,
          ),
          ActionButton(
            buttonAction: ButtonAction.left,
            propBottom: 0.12432,
            propLeft: 0.06160,
          ),
          ActionButton(
            buttonAction: ButtonAction.rigth,
            propBottom: 0.12432,
            propLeft: 0.21619,
          ),
          ActionButton(
            buttonAction: ButtonAction.down,
            propBottom: 0.08289,
            propLeft: 0.13768,
          ),
          const Sound(),
        ],
      ),
    );
  }
}
