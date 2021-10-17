import 'dart:ui';

import 'package:flutter/material.dart';

class BgScreen extends StatefulWidget {
  const BgScreen({Key? key}) : super(key: key);

  @override
  _BgScreenState createState() => _BgScreenState();
}

class _BgScreenState extends State<BgScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
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
    );
  }
}
