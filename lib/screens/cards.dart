import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:todoit/widgets/todo_card.dart';
import '../styles/constants.dart';

class Cards extends StatefulWidget {
  static String id = "CardScreen";
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.allBGColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView.custom(
            semanticChildCount: 3,
            gridDelegate: SliverWovenGridDelegate.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 3,
              pattern: [
                WovenGridTile(1),
                WovenGridTile(
                  5.3 / 7,
                  crossAxisRatio: 0.9,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate((context, index) {
              return TodoCard();
            }, childCount: 5),
          ),
        ),
      ),
    );
  }
}
