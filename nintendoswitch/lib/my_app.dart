import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/home/my_nintendo_page.dart';

// class of preferences ui and title app
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nintendo Switch',

      //call home page
      home: MyNintendoPage(title: 'Nintendo Switch'),
    );
  }
}
