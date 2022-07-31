import 'package:flutter/material.dart';
import 'package:flutter_app/view/massenger.dart';
import 'package:flutter_app/view/normalUsers.dart';

class MainLayout extends StatefulWidget {
  MainLayout({Key? key}) : super(key: key);


  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _current = 1;
  
List screens=[Massenger(), NormalUsers()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_current], 
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account), label: "account")
        ],
        currentIndex: _current,
        onTap: (index) {
          _current = index;
        },
      ),
    );
  }
}
