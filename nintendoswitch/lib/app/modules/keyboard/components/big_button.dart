import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final double positionalBottom;
  final double positionalLeft;
  final double sizeButton;
  const BigButton(
      {Key? key,
      required this.positionalBottom,
      required this.positionalLeft,
      this.sizeButton = 58})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: size.height * positionalBottom,
      left: size.width * positionalLeft,
      //center utiliza o posicionamento
      child: Container(
        //alignment: Alignment.center,
        height: sizeButton,
        width: sizeButton,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 104, 109, 112),
              Color.fromARGB(255, 5, 15, 17),
            ],
          ),
        ),
        child: Center(
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              //tamanho proporcional por %
              height: constraints.maxWidth * 0.8,
              width: constraints.maxWidth * 0.8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromARGB(255, 104, 109, 112),
                    Color.fromARGB(255, 5, 15, 17),
                  ],
                ),
              ),
              child: Center(
                child: LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    //tamanho proporcional por %
                    height: constraints.maxWidth * 0.9,
                    width: constraints.maxWidth * 0.9,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 103, 106, 111),
                          Color.fromARGB(255, 36, 38, 37),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            );
          }),
        ),
      ),
    );
  }
}
