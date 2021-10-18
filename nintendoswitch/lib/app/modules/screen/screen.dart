import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/screen/components/big_logo.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.057973,
        vertical: size.height * 0.03791,
      ),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 0),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const BigLogo(),
    );
  }
}
