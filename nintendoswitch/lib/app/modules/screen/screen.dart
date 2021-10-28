import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/screen/components/logo.dart';
import 'package:nintendoswitch/app/modules/screen/components/logo_r.dart';

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
              color: Color(0xff000000),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              return LogoR(
                size: constraints.maxWidth * 0.35,
                color: const Color(0xffffffff),
                bgColor: const Color(0xffc4c4c4),
              );
            }),
          ),
        );
      },
    );
  }
}
