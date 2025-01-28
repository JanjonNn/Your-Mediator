import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AddFlatScreen.dart';
import 'ContactUsScreen.dart';
import 'SettingScreen.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Widget> listwidget = [
    Homescreen(),
    ContactUsScreen(),
    Addflatscreen(),
    SettingsScreen(),
  ];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF2F05AE),
        currentIndex: selectedindex,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>listwidget [index],
            ),
          );
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
