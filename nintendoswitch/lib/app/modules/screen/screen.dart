import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/screen/components/logo.dart';

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
            decoration: BoxDecoration(
              color: Color(int.parse('0xff000000')),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              return Logo(
                size: constraints.maxWidth * 0.35,
                color: Color(int.parse('0xffffffff')),
                bgColor: Color(int.parse('0xffc4c4c4')),
              );
            }),
          ),
        );
      },
    );
  }
}
