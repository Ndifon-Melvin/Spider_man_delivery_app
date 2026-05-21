import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/order.dart';
import 'package:flutter_application_1/widgets/container.dart';

class Welcome extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            
            SizedBox(height: 60,),
            Image(image: AssetImage('assets/images/spider_man.png')),
            
            SizedBox(height: 50,),
            MyContainer(
              height: 63,
              width: 370,
              color1: Colors.white,
              color: AppColors.red,
              text: 'Bienvenu',
              size: 23,
              radius: 20,
            ),

            SizedBox(height: 15,),
            MyContainer(
              height: 63,
              width: 370,
              color1: AppColors.red,
              color: AppColors.white,
              text: 'Welcome',
              size: 23,
              radius: 20,
            ),
          ],
        ),
      ),
    );
  }
}