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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 75, 80, 84),
              Color.fromARGB(255, 39, 43, 46),
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
