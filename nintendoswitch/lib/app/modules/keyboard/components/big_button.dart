import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/modules/keyboard/controller/keyboard_controller.dart';

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
    KeyboardController keyboardController =
        KeyboardController.instanceSingleton;
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
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(int.parse('0xff686D70')),
              Color(int.parse('0xff050F11')),
            ],
          ),
        ),
        child: Center(
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              //tamanho proporcional por %
              height: constraints.maxWidth * 0.8,
              width: constraints.maxWidth * 0.8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(int.parse('0xff686D70')),
                    Color(int.parse('0xff050F11')),
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
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(int.parse('0xff676A6F')),
                          Color(int.parse('0xff242625')),
                        ],
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.blue[100],
                        borderRadius: BorderRadius.circular(30),
                        onTap: () => keyboardController.lightOnOffEffect(),
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
