import 'package:flutter/material.dart';
import 'package:todoit/screens/cards.dart';
import 'package:todoit/styles/constants.dart';

class TodoitPage extends StatelessWidget {
  const TodoitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: AppColors.kAppColor,
                elevation: 0,
                toolbarHeight: 70,
                title: Text(
                  "Todo",
                  style: todoTextStyles.Heading,
                ),
                bottom: const TabBar(
                    indicatorColor: AppColors.folderColor,
                    unselectedLabelColor: Colors.white,
                    labelColor: AppColors.folderColor,
                    indicatorWeight: 3,
                    indicatorPadding:
                        EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                    tabs: [
                      Tab(child: Text("All")),
                      Tab(child: Text("Folder"))
                    ]),
              ),
              backgroundColor: AppColors.kAppColor,
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                backgroundColor: AppColors.kButtonColor,
                child: Icon(Icons.add),
              ),
              body: TabBarView(children: [
                Cards(),
                Center(
                    child: Text(
                  "NextPage",
                  style: todoTextStyles.Heading,
                ))
              ]))),
    );
  }
}
