import 'package:flutter/material.dart';

class Lamp extends StatefulWidget {
  final double propLeft;
  final double propBotton;
  final bool isOn;
  const Lamp({
    Key? key,
    required this.propLeft,
    required this.propBotton,
    this.isOn = false,
  }) : super(key: key);

  @override
  _LampState createState() => _LampState();
}

class _LampState extends State<Lamp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      left: size.width * widget.propLeft,
      bottom: size.height * widget.propBotton,
      child: Container(
        height: size.width * 0.01450,
        width: size.width * 0.01450,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              widget.isOn ? const Color(0xffB6EBA5) : const Color(0xff222327),
        ),
      ),
    );
  }
}
