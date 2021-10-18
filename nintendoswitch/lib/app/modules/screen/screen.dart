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
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Container(
            height: constraints.maxHeight * 0.88,
            width: constraints.maxWidth * 0.88,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Center(
              child: BigLogo(
                size: constraints.maxHeight * 0.13,
                color: Colors.black,
                bgColor: const Color.fromARGB(255, 196, 196, 196),
                propBottom: constraints.maxHeight / 2,
                propLeft: constraints.maxWidth / 2,
              ),
            ),
          ),
        );
      },
    );
  }
}
