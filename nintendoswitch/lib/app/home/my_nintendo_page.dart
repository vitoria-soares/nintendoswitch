import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const BgScreen(),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: size.height * 0.61,
                child: const Screen(),
              ),
              SizedBox(
                width: double.infinity,
                height: size.height * 0.39,
                child: const Keyboard(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
