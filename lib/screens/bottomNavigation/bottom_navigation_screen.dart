import 'package:flutter/material.dart';
import 'package:todoit/screens/bottomNavigation/category/category_screen.dart';
import 'package:todoit/screens/bottomNavigation/home/home_screen.dart';
import 'package:todoit/screens/bottomNavigation/settings/settings_screen.dart';
import 'package:todoit/styles/app_colors.dart';

class BottomNavigationScreen extends StatefulWidget {
  static String id = "bottom_navigation";

  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentPage = 1;
  var pages = [CategoryScreen(), HomeScreen(), SettingScreen()];

  void _changeState(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  Widget bottomNav() {
    return Container(
      padding: EdgeInsets.all(12.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(50.0))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () => _changeState(0),
            icon: Icon(
              Icons.access_alarm,
              color: _currentPage == 0
                  ? AppColors.bottomNavActiveColor
                  : AppColors.bottomNavInactiveColor,
            ),
          ),
          IconButton(
            onPressed: () => _changeState(1),
            icon: Icon(
              Icons.add,
              color: _currentPage == 1
                  ? AppColors.bottomNavActiveColor
                  : AppColors.bottomNavInactiveColor,
            ),
          ),
          IconButton(
            onPressed: () => _changeState(2),
            icon: Icon(
              Icons.account_balance_sharp,
              color: _currentPage == 2
                  ? AppColors.bottomNavActiveColor
                  : AppColors.bottomNavInactiveColor,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [pages[_currentPage], bottomNav()],
        ),
      ),
    );
  }
}
