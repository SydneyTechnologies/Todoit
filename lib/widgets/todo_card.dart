import 'package:flutter/material.dart';
import 'package:todoit/styles/app_colors.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.8, 0.0),
          colors: <Color>[
            AppColors.cardBGColorOne,
            AppColors.cardBGColorTwo,
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quote Today',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'The best description for tomorrow is to get ps5 and play FIFA all day. Why? because i can.',
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: TextStyle(color: AppColors.descriptionColor, fontSize: 13),
            ),
            SizedBox(
              height: 10,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jan 21',
                  style: TextStyle(color: AppColors.dateColor, fontSize: 14),
                ),
                Text(
                  'Quote',
                  style: TextStyle(color: AppColors.dateColor, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
