import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/sign_In.dart';
import 'package:flutter_application_1/widgets/container.dart';

class Delivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 180, left: 20, right: 20),
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/fast_delivery.png')),

            SizedBox(height: 20),
            Center(
              child: Text(
                'Fast Delivery',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'We provide the fastest ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Center(
              child: Text(
                'delivery Service',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),

            SizedBox(height: 30,),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn())),
              child: MyContainer(
                width: 231,
                height: 46,
                radius: 10,
                color: AppColors.red,
                color1: AppColors.white,
                text: 'Get Started',
                size: 17,
              )
            ),
          ],
        ),
      ),
    );
  }
}
