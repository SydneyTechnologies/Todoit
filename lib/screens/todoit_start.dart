import 'package:flutter/material.dart';
import 'package:todoit/screens/screens.dart';
import 'package:todoit/styles/constants.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kAppColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Column(
            children: [
              Image.asset(
                "assets/images/notebook.png",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
                height: 300,
                width: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Todoit",
                style: todoTextStyles.Heading.copyWith(letterSpacing: 2),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Organize your projects, activities and life\nin the most efficient way possible.",
                style: todoTextStyles.subtitle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TodoitPage()));
                },
                child: Text(
                  "Get Started",
                  style: todoTextStyles.subtitle.copyWith(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
                    primary: AppColors.kButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
              const SizedBox(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
