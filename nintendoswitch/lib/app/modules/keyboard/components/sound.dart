import 'package:flutter/material.dart';

class Sound extends StatefulWidget {
  const Sound({Key? key}) : super(key: key);

  @override
  _SoundState createState() => _SoundState();
}

class _SoundState extends State<Sound> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      left: size.width * 0.03624,
      bottom: size.height * 0.01902,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.width * 0.06282,
            width: size.width * 0.06282,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              //shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 123, 130, 135),
                  Color.fromARGB(255, 50, 65, 68),
                ],
              ),
            ),
          ),
          Container(
            height: size.width * 0.053173,
            width: size.width * 0.053173,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              //shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 74, 73, 78),
                  Color.fromARGB(255, 82, 81, 87),
                ],
              ),
            ),
          ),
          Container(
            height: size.width * 0.038666,
            width: size.width * 0.038666,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 24, 32, 34),
            ),
          ),
        ],
      ),
    );
  }
}
