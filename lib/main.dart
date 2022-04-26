import 'package:flutter/material.dart';
import 'package:todoit/screens/screens.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: "Poppins"),
    home: StartScreen(),
  ));
}
