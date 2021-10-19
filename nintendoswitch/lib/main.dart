import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nintendoswitch/my_app.dart';

void main() {
  //assign transparent color to status bar
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(
    //launch the app
    const MyApp(),
  );
}
