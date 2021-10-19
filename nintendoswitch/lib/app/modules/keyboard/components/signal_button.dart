import 'package:flutter/material.dart';

class SignalButton extends StatefulWidget {
  final bool isPlus;
  final double propBottom;
  final double propLeft;
  const SignalButton({
    Key? key,
    required this.isPlus,
    required this.propBottom,
    required this.propLeft,
  }) : super(key: key);

  @override
  _SignalButtonState createState() => _SignalButtonState();
}

class _SignalButtonState extends State<SignalButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height * 0.00951;
    double width = size.width * 0.0572;
    return Positioned(
      left: size.width * widget.propLeft,
      bottom: size.height * widget.propBottom,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.blue[100],
          borderRadius: BorderRadius.circular(30),
          onTap: () {},
          child: SizedBox(
            height: width,
            width: width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: height,
                  width: width,
                  decoration: const BoxDecoration(
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
                !widget.isPlus
                    ? Container()
                    : Container(
                        height: width,
                        width: height,
                        decoration: const BoxDecoration(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
