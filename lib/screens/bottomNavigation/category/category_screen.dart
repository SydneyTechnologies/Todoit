import 'package:flutter/material.dart';
import 'package:todoit/styles/app_colors.dart';

class CategoryScreen extends StatefulWidget {
  static String id =
      "category_screen";
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Category Screen"))
          ],
        ),
      ),
    );
  }
}
