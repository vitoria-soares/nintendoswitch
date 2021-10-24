import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/action_button/action_button.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/big_button.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/home_button.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/signal_button.dart';

class RightSide extends StatefulWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  _RightSideState createState() => _RightSideState();
}

class _RightSideState extends State<RightSide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(int.parse('0xffFF5F53')),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(85)),
      ),
      child: Stack(
        children: [
          const SignalButton(
            isPlus: true,
            propLeft: 0.22312,
            propBottom: 0.34511,
          ),
          ActionButton(
            colorWidget: const Color(0xffffffff),
            buttonAction: ButtonAction.x,
            propBottom: 0.29484,
            propLeft: 0.11475,
          ),
          ActionButton(
            colorWidget: const Color(0xffffffff),
            buttonAction: ButtonAction.y,
            propBottom: 0.25340,
            propLeft: 0.03864,
          ),
          ActionButton(
            colorWidget: const Color(0xffffffff),
            propBottom: 0.25340,
            propLeft: 0.19445,
          ),
          ActionButton(
            colorWidget: const Color(0xffffffff),
            buttonAction: ButtonAction.b,
            propBottom: 0.21196,
            propLeft: 0.11475,
          ),
          const BigButton(
            positionalBottom: 0.10258,
            positionalLeft: 0.07608,
          ),
          const HomeButton(),
        ],
      ),
    );
  }
}
