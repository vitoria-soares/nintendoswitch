import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final double sizeButton;
  const HomeButton({
    Key? key,
    this.sizeButton = 29,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      left: size.width * 0.21376,
      bottom: size.height * 0.01562,
      child: Container(
        alignment: Alignment.center,
        height: sizeButton,
        width: sizeButton,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0XFF732A23),
          ),
          shape: BoxShape.circle,
          color: const Color(0xff8F8989),
        ),
        child: LayoutBuilder(
          builder: (context, contraints) {
            return Container(
              alignment: Alignment.center,
              height: contraints.maxWidth * 0.7,
              width: contraints.maxWidth * 0.7,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff33383C),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blue[100],
                  borderRadius: BorderRadius.circular(30),
                  onTap: () => {},
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Center(
                        child: Icon(
                          Icons.home,
                          color: const Color(0xff000000),
                          size: constraints.maxWidth * 0.6,
                        ),
                      );
                    },
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
