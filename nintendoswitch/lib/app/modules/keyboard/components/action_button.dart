import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final Widget widget;
  final double propBottom;
  final double propLeft;
  final Alignment gradientBegin;
  final Alignment gradientEnd;
  const ActionButton({
    Key? key,
    required this.widget,
    required this.propBottom,
    required this.propLeft,
    required this.gradientBegin,
    required this.gradientEnd,
  }) : super(key: key);

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
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
            height: size.width * 0.07491,
            width: size.width * 0.07491,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: widget.gradientBegin,
                end: widget.gradientEnd,
                colors: const [
                  Color.fromARGB(255, 123, 130, 125),
                  Color.fromARGB(255, 5, 15, 17),
                ],
              ),
            ),
          ),
          Container(
            height: size.width * 0.06043,
            width: size.width * 0.06043,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
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
            child: widget.widget,
          ),
        ],
      ),
    );
  }
}
