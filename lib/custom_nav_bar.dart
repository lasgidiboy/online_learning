// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy,
            ),
            label: "Subject"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.leaderboard,
            ),
            label: "Growing"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "MY"),
      ],
      fixedColor: Colors.black54,
      unselectedItemColor: Colors.black54,
      showSelectedLabels: true,
      unselectedLabelStyle: TextStyle(color: Colors.black54),
      unselectedFontSize: 14,
      unselectedIconTheme: IconThemeData(color: Colors.black54, size: 20),
    );
  }
}
