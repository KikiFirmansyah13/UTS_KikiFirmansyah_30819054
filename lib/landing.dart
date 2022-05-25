// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_tracer_study_alumni/login.dart';
import 'package:e_tracer_study_alumni/home.dart';

class Page_Utama extends StatefulWidget {
  const Page_Utama({Key? key}) : super(key: key);

  @override
  State<Page_Utama> createState() => _Page_UtamaState();
}

class _Page_UtamaState extends State<Page_Utama> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [new Home(), new Login()];

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
            icon: Icon(Icons.account_circle),
            label: 'Login',
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
