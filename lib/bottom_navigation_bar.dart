import 'package:flutter/material.dart';
import 'package:populer_recipies/home.dart';
import 'package:populer_recipies/profile.dart';

import 'detils.dart';

class bottom_navigation extends StatefulWidget {
  const bottom_navigation({Key? key}) : super(key: key);

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int selected = 0;
  List Screen = [
    home(),
    detils(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        selectedItemColor: Colors.tealAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
              ),
              label: ""),
        ],
      ),
    );
  }
}
