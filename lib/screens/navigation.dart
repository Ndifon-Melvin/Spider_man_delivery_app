import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/calls.dart';
import 'package:flutter_application_1/screens/history.dart';
import 'package:flutter_application_1/screens/home.dart';

class Navigation extends StatefulWidget {
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> screens = [Home(), History(), Calls()];

  void changeTab(int index) {
    setState(() {
      currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: screens,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),

          child: BottomAppBar(
            color: AppColors.grey2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () => changeTab(0),
                      icon: Icon(Icons.house),
                      color: currentIndex == 0
                          ? AppColors.red
                          : AppColors.black,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: currentIndex == 0
                            ? AppColors.red
                            : AppColors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () => changeTab(1),
                      icon: Icon(Icons.history),
                      color: currentIndex == 1
                          ? AppColors.red
                          : AppColors.black,
                    ),
                    Text(
                      'History',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: currentIndex == 1
                            ? AppColors.red
                            : AppColors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () => changeTab(2),
                      icon: Icon(Icons.phone),
                      color: currentIndex == 2
                          ? AppColors.red
                          : AppColors.black,
                    ),
                    Text(
                      'Calls',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: currentIndex == 2
                            ? AppColors.red
                            : AppColors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
