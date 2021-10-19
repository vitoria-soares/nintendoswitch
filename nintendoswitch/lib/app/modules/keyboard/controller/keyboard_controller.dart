import 'package:flutter/material.dart';

//class keyboardController is a singleton for controller on/off ligths
class KeyboardController extends ChangeNotifier {
  KeyboardController._();
  static KeyboardController instanceSingleton = KeyboardController._();
  List<bool> lightOn = [false, false, false, false, false, false, false, false];
  int position = 0;
  void lightOnOffEffect() {
    lightOn[position] = !lightOn[position];

    if (position < 7) {
      position++;
    } else {
      position = 0;
    }

    notifyListeners();
  }
}
