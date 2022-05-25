import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_tracer_study_alumni/home.dart';
import 'package:e_tracer_study_alumni/Profile.dart';

class LandingDua extends StatefulWidget {
  const LandingDua({Key? key}) : super(key: key);

  @override
  State<LandingDua> createState() => LandingDuaState();
}

class LandingDuaState extends State<LandingDua> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [new Home(), new Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
