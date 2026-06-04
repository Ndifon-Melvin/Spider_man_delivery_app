import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/chats.dart';
import 'package:flutter_application_1/screens/history.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/widgets/appbar_text.dart';
import 'package:flutter_application_1/widgets/drawer_text.dart';

class Navigation extends StatefulWidget {
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> screens = [Home(), History(), Chats()];

  void changeTab(int index) {
    setState(() {
      currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: AppBarText(text: 'Dashborad',),
        centerTitle: true,
        actions:[
          Container(
              margin: EdgeInsets.only(right: 15),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: AppColors.red
                ),
                image: DecorationImage(image: AssetImage('assets/images/face.png',), fit: BoxFit.cover)
              ),
            )
        ]
      ),
      drawer: Drawer(
        backgroundColor: AppColors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 80),
            child: Column(
              children: [
                  Row(children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.close, size: 30, fontWeight: FontWeight.w900,)
                    ),
                  SizedBox(width: 60),
                  Text('Menu', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                  ]),
            
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 40),
                    padding: EdgeInsets.symmetric(horizontal: 15, ),
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(children: [
                      Text('BALANCE', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: AppColors.white),),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('10 WEB', style: TextStyle(fontSize: 13,  color: AppColors.white),),
                          Text('1,000 XAF', style: TextStyle(fontSize: 13, color: AppColors.white),),
                        ],
                      )
                    ],)
                  ),
          
                  DrawerText(
                    text: 'Send',
                  ),
          
                  DrawerText(
                    text: 'History',
                  ),
          
                  DrawerText(
                    text: 'Call',
                  ),
          
                  DrawerText(
                    text: 'Save Places',
                  ),
          
                  DrawerText(
                    text: 'Settings',
                  ),
          
                  DrawerText(
                    text: 'Info',
                  ),
          
                  DrawerText(
                    text: 'Logout',
                  ),
              ],
            ),
          ),
        ),
      ),
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
                      icon: Icon(Icons.message),
                      color: currentIndex == 2
                          ? AppColors.red
                          : AppColors.black,
                    ),
                    Text(
                      'Chats',
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
