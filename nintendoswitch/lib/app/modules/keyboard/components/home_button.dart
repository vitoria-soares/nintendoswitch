import 'package:flutter/material.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  _HomeButtonState createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      left: size.width * 0.21376,
      bottom: size.height * 0.01562,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.width * 0.07733,
            width: size.width * 0.07733,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(int.parse('0XFF732A23')),
                width: 1,
              ),
              //borderRadius: BorderRadius.all(Radius.circular(2)),
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 143, 137, 137),
            ),
          ),
          Container(
            height: size.width * 0.05800,
            width: size.width * 0.05800,
            decoration: const BoxDecoration(
              //borderRadius: BorderRadius.all(Radius.circular(2)),
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 51, 56, 60),
            ),
          ),
          Icon(
            Icons.home,
            color: const Color.fromARGB(255, 0, 0, 0),
            size: size.width * 0.03699,
          ),
        ],
      ),
    );
  }
}
