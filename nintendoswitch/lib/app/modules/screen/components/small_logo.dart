import 'package:flutter/material.dart';

class SmallLogo extends StatefulWidget {
  const SmallLogo({Key? key}) : super(key: key);

  @override
  _SmallLogoState createState() => _SmallLogoState();
}

class _SmallLogoState extends State<SmallLogo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      left: size.width * 0.10869,
      bottom: size.height * 0.16184,
      child: SizedBox(
        height: size.height * 0.07046,
        width: size.width * 0.12506,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: size.width * 0.06053,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.05844,
                  width: size.width * 0.03920,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                  left: size.width * 0.01963,
                  bottom: size.height * 0.04265,
                  child: Container(
                    height: size.width * 0.02400,
                    width: size.width * 0.02400,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: size.width * 0.05242,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
                Positioned(
                  left: size.width * 0.01333,
                  bottom: size.height * 0.02548,
                  child: Container(
                    height: size.width * 0.02400,
                    width: size.width * 0.02400,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
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
