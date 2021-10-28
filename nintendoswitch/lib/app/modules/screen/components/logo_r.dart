import 'package:flutter/material.dart';

class LogoR extends StatefulWidget {
  final double size;
  final Color color;
  final Color bgColor;
  const LogoR({
    Key? key,
    required this.size,
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

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     //side left logo
            //     Stack(
            //       children: [
            //         ClipPath(
            //           clipper: LogoClipLeft(),
            //           child: Container(
            //             width: constraints.maxWidth * 0.49,
            //             decoration: BoxDecoration(
            //               color: widget.color,
            //             ),
            //           ),
            //         ),
            //         Positioned(
            //           left: constraints.maxWidth * 0.15,
            //           bottom: constraints.maxHeight * 0.6,
            //           child: Container(
            //             height: constraints.maxWidth * 0.19,
            //             width: constraints.maxWidth * 0.19,
            //             decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               color: widget.color,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),

            //     //side right logo
            //     ClipPath(
            //       clipper: BigLogoClipRight(),
            //       child: Container(
            //         width: constraints.maxWidth * 0.42,
            //         decoration: BoxDecoration(
            //           color: widget.color,
            //           borderRadius: BorderRadius.only(
            //             topRight:
            //                 Radius.circular(constraints.maxWidth * 0.42 / 2),
            //             bottomRight:
            //                 Radius.circular(constraints.maxWidth * 0.42 / 2),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // );
          },
        ),
      ),
    );
  }
}

class BigLogoClipRight extends CustomClipper<Path> {
  double radius = 10;
  @override

  //add rigth circle
  Path getClip(Size size) {
    var pathScreen = Path()
      ..addOval(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height * 0.5638),
            radius: size.width * 0.23),
      )
      ..lineTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);
    pathScreen.close();
    return pathScreen;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

//left
class LogoClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    var cutLeftSide = RRect.fromRectAndCorners(
      Rect.fromPoints(
        Offset(w * 0.07, w * 0.07),
        Offset(w * 0.48 - w * 0.07, h * 0.93),
      ),
      topLeft: Radius.circular(w * .48 / 2),
      bottomLeft: Radius.circular(w * .48 / 2),
    );

    var retangleCut = Rect.fromCenter(
      center: Offset(w * 0.53, h / 2),
      width: w * 0.1,
      height: h,
    );

    var circleLeft = Rect.fromCenter(
      center: Offset(w * 0.24, h * 0.4),
      width: w * 0.2,
      height: w * 0.2,
    );

    var circleRight = Rect.fromCenter(
      center: Offset(w * 0.78, h * 0.66),
      width: w * 0.20,
      height: w * 0.20,
    );

    var pathScreen = Path()
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
