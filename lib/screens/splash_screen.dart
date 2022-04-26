import 'package:flutter/material.dart';
import 'package:todoit/screens/get_started_screen.dart';

import 'cards.dart';

class SplashScreen extends StatefulWidget {
  static String id =
      "splash-screen"; // this is the ID present within each screen so navigator can be used to identify screens
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController scaleController;
  late final Animation<double> scaleUp;
  @override
  void initState() {
    super.initState();
    initializeAnimation();
  }

  void toLoginScreen() async {
    await Future.delayed(Duration(milliseconds: 200), () {
      Navigator.pushReplacementNamed(context, Cards.id);
    });
  }

  void initializeAnimation() {
    scaleController =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this)
          ..addListener(() {
            setState(() {});
          });
    scaleController
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          toLoginScreen();
        }
      });
    scaleUp = Tween<double>(begin: 0.5, end: 1).animate(scaleController);
    scaleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ScaleTransition(
            scale: scaleUp,
            child: Image.asset(
              "assets/images/todoit_logo.png",
            ),
          ),
        ),
      ),
    );
  }
}
