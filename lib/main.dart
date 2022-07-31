import 'package:flutter/material.dart';
import 'package:flutter_app/view/layout.dart';
import 'package:flutter_app/view/login.dart';
import 'package:flutter_app/view/massenger.dart';
import 'package:flutter_app/view/normalUsers.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hide debug
      // home: LoginPage(),
 
      home: MainLayout(),
      theme:ThemeData(brightness: Brightness.dark) // also

    );
  }
}

