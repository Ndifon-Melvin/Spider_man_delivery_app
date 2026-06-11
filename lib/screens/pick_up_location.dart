import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/drop_location.dart';
import 'package:flutter_application_1/screens/navigation.dart';
import 'package:flutter_application_1/widgets/changepassword.dart';
import 'package:flutter_application_1/widgets/container.dart';

class PickUpLocation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: Column(
          children: [
            Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Navigation()),
                    ),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 60),
                  Text(
                    'Pick Up Locaiton',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text('Select Pick Up Location', style: TextStyle(
                fontSize: 15
              ),),
              SizedBox(height: 15,),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.grey2,

                    suffixIcon: Icon(Icons.search, size: 25),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Image(image: AssetImage('assets/images/map2.png')),
              SizedBox(height: 15,),
              PasswordWidget(
                width: double.infinity,
                height: 50,
                radius: 5,
                color: AppColors.grey,
                text: 'City',
              ),
              SizedBox(height: 15,),
              PasswordWidget(
                width: double.infinity,
                height: 50,
                radius: 5,
                color: AppColors.grey,
                text: 'Quater',
              ),
              SizedBox(height: 15,),
              PasswordWidget(
                width: double.infinity,
                height: 100,
                radius: 5,
                color: AppColors.grey,
                text: 'Brief Description',
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DropLocation())),
                child: MyContainer(
                width: double.infinity,
                height: 50,
                radius: 20,
                color: AppColors.red,
                text: 'Next',
                color1: AppColors.white,
                size: 20,
                x: 0,
                y: 4,
                            ),
              ),
          ],
        ),
      ),
    );
  }
}