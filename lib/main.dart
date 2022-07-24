import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/messenger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      // debugShowCheckedModeBanner: false,
      // home: Massenger(),
      // theme:ThemeData(brightness: Brightness.dark)

    );
  }
}

