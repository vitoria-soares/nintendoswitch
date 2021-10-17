import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/components/action_button.dart';
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
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 95, 83),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(85)),
      ),
      child: Stack(
        children: const [
          SignalButton(
            isPlus: true,
            propLeft: 0.22312,
            propBottom: 0.34511,
          ),
          ActionButton(
            widget: Text(
              'X',
              style: TextStyle(color: Colors.white),
            ),
            propBottom: 0.29484,
            propLeft: 0.11475,
            gradientBegin: Alignment.topCenter,
            gradientEnd: Alignment.bottomCenter,
          ),
          ActionButton(
            widget: Text(
              'Y',
              style: TextStyle(color: Colors.white),
            ),
            propBottom: 0.25340,
            propLeft: 0.03864,
            gradientBegin: Alignment.topCenter,
            gradientEnd: Alignment.bottomCenter,
          ),
          ActionButton(
            widget: Text(
              'A',
              style: TextStyle(color: Colors.white),
            ),
            propBottom: 0.25340,
            propLeft: 0.19445,
            gradientEnd: Alignment.centerRight,
            gradientBegin: Alignment.centerLeft,
          ),
          ActionButton(
            widget: Text(
              'B',
              style: TextStyle(color: Colors.white),
            ),
            propBottom: 0.21196,
            propLeft: 0.11475,
            gradientEnd: Alignment.centerRight,
            gradientBegin: Alignment.centerLeft,
          ),
          BigButton(
            propBottom: 0.10258,
            propLeft: 0.07608,
          ),
          HomeButton(),
        ],
      ),
    );
  }
}
