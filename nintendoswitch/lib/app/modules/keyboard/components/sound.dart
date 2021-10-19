import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Sound extends StatefulWidget {
  final double sizeSound;
  const Sound({Key? key, this.sizeSound = 24}) : super(key: key);

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
      child: Container(
        alignment: Alignment.center,
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
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            alignment: Alignment.center,
            // height: size.width * 0.053173,
            // width: size.width * 0.053173,
            height: constraints.maxWidth * 0.8,
            width: constraints.maxWidth * 0.8,
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
            child: LayoutBuilder(builder: (context, constraints) {
              return Container(
                // height: size.width * 0.038666,
                // width: size.width * 0.038666,
                height: constraints.maxWidth * 0.75,
                width: constraints.maxWidth * 0.75,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 24, 32, 34),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue[100],
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                  ),
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}
