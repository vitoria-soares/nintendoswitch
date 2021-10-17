import 'package:flutter/material.dart';

class BigLogo extends StatefulWidget {
  const BigLogo({Key? key}) : super(key: key);

  @override
  _BigLogoState createState() => _BigLogoState();
}

class _BigLogoState extends State<BigLogo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        color: const Color.fromARGB(255, 196, 196, 196),
        height: size.height * 0.19346,
        width: size.width * 0.34355,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: size.width * 0.16634,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.16342,
                  width: size.width * 0.10933,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 196, 196, 196),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  left: size.width * 0.05395,
                  bottom: size.height * 0.11718,
                  child: Container(
                    height: size.width * 0.06472,
                    width: size.width * 0.06472,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: size.width * 0.14392,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  left: size.width * 0.036598,
                  bottom: size.height * 0.06996,
                  child: Container(
                    height: size.width * 0.06472,
                    width: size.width * 0.06472,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 196, 196, 196),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
