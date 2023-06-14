import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';
import 'detils.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: bottom_navigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
