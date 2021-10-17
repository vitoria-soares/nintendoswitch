import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/keyboard.dart';
import 'package:nintendoswitch/app/modules/screen/bg_screen.dart';
import 'package:nintendoswitch/app/modules/screen/screen.dart';

class MyNintendoPage extends StatefulWidget {
  const MyNintendoPage({Key? key, required String title}) : super(key: key);

  @override
  _MyNintendoPageState createState() => _MyNintendoPageState();
}

class _MyNintendoPageState extends State<MyNintendoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BgScreen(),
          Column(
            children: const [
              Expanded(
                flex: 40963,
                child: Screen(),
              ),
              Expanded(
                flex: 25737,
                child: Keyboard(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
