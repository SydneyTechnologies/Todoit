import 'package:flutter/material.dart';
import 'package:todoit/constants.dart';
import 'package:todoit/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset("images/middle_graphics.png"),
            padding: EdgeInsets.fromLTRB(70, 120, 70, 50),
          ),
          Text(
            "Create your account",
            style: kHeadings,
          ),
        ],
      ),
    );
  }
}
