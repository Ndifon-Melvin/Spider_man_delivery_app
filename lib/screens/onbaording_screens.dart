import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/delivery.dart';
import 'package:flutter_application_1/screens/order.dart';
import 'package:flutter_application_1/screens/welcome.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbaordingScreens extends StatefulWidget {
  @override
  State<OnbaordingScreens> createState() => _OnbaordingScreensState();
}

class _OnbaordingScreensState extends State<OnbaordingScreens> {

  int currentIndex = 0;

  final PageController _pageController = PageController();

  List<Widget> screens = [
    Welcome(),
    Order(),
    Delivery(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

      
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: screens,
          ),

          
          Positioned(
            top: 50,
           
            right: 20,

            child: GestureDetector(
              onTap: () {
            
                _pageController.jumpToPage(
                  screens.length - 1,
                );
            
              },
            
              child: Text(
                'Skip',
                style: TextStyle(
                  
                  color: currentIndex == screens.length - 1
                      ? Colors.transparent
                      : AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Positioned(child:   
            SmoothPageIndicator(
              controller: _pageController,
              count: screens.length,
              effect: JumpingDotEffect(
                activeDotColor: AppColors.red,
                dotColor: const Color.fromARGB(255, 217, 216, 216),
                dotHeight: 10,
                dotWidth: 10,
                
              ),
            ),
            top: 600,
            left: 155,
            
            
          ),
        ],
      ),
    );
  }
}