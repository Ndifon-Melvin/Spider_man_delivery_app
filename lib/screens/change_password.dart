import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/profile.dart';
import 'package:flutter_application_1/widgets/changepassword.dart';
import 'package:flutter_application_1/widgets/container.dart';


class ChangePassword extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40,),
        child: Column(
          children: [
            Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    ),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 50),
                  Text(
                    'Change Password',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Image(image: AssetImage('assets/images/change_password.png')),
              Text('Fill the spaces to reset the Password'),
              SizedBox(height: 5,),
              PasswordWidget(
                width: double.infinity,
                height: 50,
                radius: 5,
                text: 'Old Password',
                color: AppColors.grey,
              ),
              SizedBox(height: 15,),
              PasswordWidget(
                width: double.infinity,
                height: 50,
                radius: 5,
                text: 'New Password',
                color: AppColors.grey,
              ),
              SizedBox(height: 15,),
              PasswordWidget(
                width: double.infinity,
                height: 50,
                radius: 5,
                text: 'Confirm Password',
                color: AppColors.grey,
              ),
              SizedBox(height: 60,),
              MyContainer(
              width: double.infinity,
              height: 55,
              radius: 20,
              color: AppColors.red,
              text: 'Change Password',
              color1: AppColors.white,
              size: 20,
              x: 0,
              y:4,
            ),
          ],
        ),
      ),
    );
  }
}