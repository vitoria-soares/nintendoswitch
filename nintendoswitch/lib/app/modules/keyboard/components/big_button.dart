import 'package:flutter/material.dart';

class BigButton extends StatefulWidget {
  final double propBottom;
  final double propLeft;
  const BigButton({Key? key, required this.propBottom, required this.propLeft})
      : super(key: key);

  @override
  _BigButtonState createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: size.height * widget.propBottom,
      left: size.width * widget.propLeft,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.width * 0.15467,
            width: size.width * 0.15467,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 104, 109, 112),
                  Color.fromARGB(255, 5, 15, 17),
                ],
              ),
            ),
          ),
          Container(
            height: size.width * 0.1256,
            width: size.width * 0.1256,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color.fromARGB(255, 104, 109, 112),
                  Color.fromARGB(255, 5, 15, 17),
                ],
              ),
            ),
          ),
          Container(
            height: size.width * 0.116,
            width: size.width * 0.116,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 103, 106, 111),
                  Color.fromARGB(255, 36, 38, 37),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
