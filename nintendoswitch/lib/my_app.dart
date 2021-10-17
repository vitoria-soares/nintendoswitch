import 'package:flutter/material.dart';
import 'package:nintendoswitch/app/home/my_nintendo_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nintendo Switch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyNintendoPage(title: 'Nintendo Switch'),
    );
  }
}
