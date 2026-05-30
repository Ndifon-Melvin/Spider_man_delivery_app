import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';

class Home extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: AppColors.white,
       
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            children: [
              Container(
                height: 254,
                width: 385,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/map1.png'), fit: BoxFit.cover),
                  border: Border.all(
                    width: 2,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}