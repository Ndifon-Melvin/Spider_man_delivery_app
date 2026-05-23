import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/check_email.dart';
import 'package:flutter_application_1/screens/sign_In.dart';
import 'package:flutter_application_1/widgets/container.dart';
import 'package:flutter_application_1/widgets/fields.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn())),
                  child: Icon(Icons.arrow_back_ios)
                  ),
                  SizedBox(width: 40,),
                Text('Reset Password', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            ),
            SizedBox(height: 40,),
            Image(image: AssetImage('assets/images/reset_password.png')),
            SizedBox(height: 20,),

            Column(
              children: [
                Text('Enter your email address so we can', style: TextStyle(
                  fontWeight: FontWeight.w500
                ),),
                Text('help you recover your password',style: TextStyle(
                  fontWeight: FontWeight.w500
                ))
              ],
            ),
            SizedBox(height:40,),
            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Enter Email',
              size: 16,
              icon: Icons.email,
            ),

            
            SizedBox(height: 50,),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckEmail())),
              child: MyContainer(
                width: 379,
                height: 48,
                radius: 15,
                color: AppColors.red,
                color1: AppColors.white,
                text: 'Reset Password',
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
