import 'package:flutter/material.dart';
import 'package:todoit/screens/bottomNavigation/bottom_navigation_screen.dart';
import 'package:todoit/screens/bottomNavigation/category/category_screen.dart';
import 'package:todoit/screens/bottomNavigation/home/home_screen.dart';
import 'package:todoit/screens/bottomNavigation/settings/settings_screen.dart';
import 'package:todoit/screens/login_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/get_started_screen.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    routes: {
      SplashScreen.id: (context) => SplashScreen(),
      GetStartedScreen.id: (context) => GetStartedScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      BottomNavigationScreen.id: (context) => BottomNavigationScreen(),
      HomeScreen.id: (context) => HomeScreen(),
      CategoryScreen.id: (context) => CategoryScreen(),
      SettingScreen.id: (context) => SettingScreen()
    },
    theme: ThemeData(fontFamily: "Poppins"),
  ));
}
