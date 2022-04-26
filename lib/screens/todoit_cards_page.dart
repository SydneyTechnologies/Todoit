import 'package:flutter/material.dart';
import 'package:todoit/styles/app_colors.dart';
import 'package:todoit/styles/font_style.dart';

class TodoitPage extends StatelessWidget {
  const TodoitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kAppColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.kButtonColor,
          child: Icon(Icons.add),
        ),
        body: Container(
          child: Column(
            children: [
              TodoAppBar(),
              TodoNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class TodoAppBar extends StatelessWidget {
  const TodoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Todo",
              style: todoTextStyles.Heading,
            ),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                "Edit",
                style: todoTextStyles.subtitle,
              )),
          IconButton(
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 20,
              )),
          IconButton(
            constraints: BoxConstraints(),
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}

class TodoNavigationBar extends StatelessWidget {
  const TodoNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                "All",
                style: todoTextStyles.subtitle,
              ),
              const SizedBox(
                height: 5,
              ),
              TargetUnderline()
            ],
          ),
          Column(
            children: [
              Text(
                "Categories",
                style: todoTextStyles.subtitle,
              ),
              const SizedBox(
                height: 5,
              ),
              TargetUnderline()
            ],
          )
        ],
      ),
    );
  }
}

class TargetUnderline extends StatelessWidget {
  const TargetUnderline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 2,
      color: Colors.grey,
    );
  }
}
