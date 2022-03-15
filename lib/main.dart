import 'package:flutter/material.dart';
import 'package:todoit/screens/login_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/get_started_screen.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    routes: {
      SplashScreen.id: (context) => SplashScreen(),
      GetStartedScreen.id: (context) => GetStartedScreen(),
      LoginScreen.id: (context) => LoginScreen()
    },
    theme: ThemeData(fontFamily: "Poppins"),
  ));
}
