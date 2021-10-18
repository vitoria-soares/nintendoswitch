import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BigLogo extends StatefulWidget {
  final double size;
  final Color color;
  final Color bgColor;
  final double propLeft;
  final double propBottom;
  const BigLogo({
    Key? key,
    required this.size,
    required this.color,
    this.bgColor = Colors.transparent,
    required this.propLeft,
    required this.propBottom,
  }) : super(key: key);

  @override
  _BigLogoState createState() => _BigLogoState();
}

//size.width * 0.34355
class _BigLogoState extends State<BigLogo> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.propLeft,
      bottom: widget.propBottom,
      child: Container(
        color: widget.bgColor,
        height: widget.size,
        width: widget.size,
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipPath(
                    clipper: BigLogoClipLeft(),
                    child: Container(
                      width: constraints.maxWidth * 0.49,
                      decoration: BoxDecoration(
                        color: widget.color,
                        // borderRadius: BorderRadius.only(
                        //   topLeft: Radius.circular(30),
                        //   bottomLeft: Radius.circular(30),
                        // ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: constraints.maxWidth * 0.15,
                    bottom: constraints.maxHeight * 0.6,
                    child: Container(
                      height: constraints.maxWidth * 0.19,
                      width: constraints.maxWidth * 0.19,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.color,
                      ),
                    ),
                  ),
                ],
              ),
              //tamnho lado direito da logo
              ClipPath(
                clipper: BigLogoClipRight(),
                child: Container(
                  width: constraints.maxWidth * 0.42,
                  decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: BorderRadius.only(
                      topRight:
                          Radius.circular(constraints.maxWidth * 0.42 / 2),
                      bottomRight:
                          Radius.circular(constraints.maxWidth * 0.42 / 2),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
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

class BigLogoClipLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    var pathScreen = Path()
      ..addRRect(
        RRect.fromRectAndCorners(
          Rect.fromPoints(
            Offset(w * 0.17, w * 0.17),
            Offset(w * 0.83, h - w * 0.17),
          ),
          topLeft: Radius.circular(w / 2),
          bottomLeft: Radius.circular(w / 2),
        ),
      )
      ..lineTo(w, 0)
      ..lineTo(w * 0.5, 0)
      ..quadraticBezierTo(w * 0.1, w * 0.1, 0, w * 0.5)
      ..lineTo(0, h - w * 0.5)
      ..quadraticBezierTo(w * 0.1, h - 2, w * 0.5, h)
      ..lineTo(w, h)
      ..lineTo(w, 0);

    ///
    pathScreen.close();
    return pathScreen;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
