import 'package:flutter/material.dart';
import 'package:todoit/styles/app_strings.dart';
import 'package:todoit/screens/login_screen.dart';
import 'package:todoit/styles/font_style.dart';
import 'package:todoit/widgets/widgets.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);
  static String id = "GetStartedScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset("assets/images/middle_graphics.png"),
            padding: EdgeInsets.fromLTRB(70, 120, 70, 50),
          ),
          Text(
            "Welcome to Todoit",
            style: kHeadings,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            AppString.kWelcomeText,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 150,
          ),
          wGeneralButton("Get Started", () {
            Navigator.pushReplacementNamed(context, LoginScreen.id);
          })
        ],
      ),
    );
  }
}
