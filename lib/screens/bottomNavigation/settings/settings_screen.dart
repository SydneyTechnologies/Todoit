import 'package:flutter/material.dart';
import 'package:todoit/styles/app_colors.dart';

class SettingScreen extends StatefulWidget {
  static String id =
      "setting_screen";
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Setting Screen"))
          ],
        ),
      ),
    );
  }
}
