import 'package:flutter/material.dart';

class LogoR extends StatefulWidget {
  final double size;
  final Color color;
  final Color bgColor;
  const LogoR({
    Key? key,
    this.size = 129,
    required this.color,
    this.bgColor = Colors.transparent,
  }) : super(key: key);

  @override
  _LogoRState createState() => _LogoRState();
}

class _LogoRState extends State<LogoR> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: widget.bgColor,
        height: widget.size,
        width: widget.size,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ClipPath(
              clipper: LogoClip(),
              child: Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.all(
                    Radius.circular(constraints.maxWidth * 0.42 / 2),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class LogoClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final cutLeftSide = RRect.fromRectAndCorners(
      Rect.fromPoints(
        Offset(w * 0.07, w * 0.07),
        Offset(w * 0.48 - w * 0.07, h * 0.93),
      ),
      topLeft: Radius.circular(w * .18),
      bottomLeft: Radius.circular(w * .18),
    );

    final retangleCut = Rect.fromCenter(
      center: Offset(w * 0.53, h / 2),
      width: w * 0.1,
      height: h,
    );

    final circleLeft = Rect.fromCenter(
      center: Offset(w * 0.24, h * 0.4),
      width: w * 0.2,
      height: w * 0.2,
    );

    final circleRight = Rect.fromCenter(
      center: Offset(w * 0.78, h * 0.66),
      width: w * 0.20,
      height: w * 0.20,
    );

    final pathScreen = Path()
      //objeto
      ..lineTo(0, 0)
      ..lineTo(0, h)
      ..lineTo(w, h)
      ..lineTo(w, 0)
      //recorte lado esquerdo
      ..addRRect(cutLeftSide)
      //corte central
      ..addRect(retangleCut)
      //corte circular
      ..addOval(circleLeft)
      //corte circular
      ..addOval(circleRight);

    pathScreen.close();
    return pathScreen;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
