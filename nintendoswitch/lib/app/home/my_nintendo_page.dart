import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nintendoswitch/app/modules/keyboard/keyboard.dart';
import 'package:nintendoswitch/app/modules/screen/screen.dart';

class MyNintendoPage extends StatefulWidget {
  const MyNintendoPage({Key? key, required String title}) : super(key: key);

  @override
  _MyNintendoPageState createState() => _MyNintendoPageState();
}

class _MyNintendoPageState extends State<MyNintendoPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(int.parse('0xff4B5054')),
              Color(int.parse('0xff272B2E')),
            ],
          ),
        ),
        child: Column(
          children: const [
            Expanded(
              flex: 61,
              child: Screen(),
            ),
            Expanded(
              flex: 39,
              child: Keyboard(),
            ),
          ],
        ),
      ),
    );
  }
}
