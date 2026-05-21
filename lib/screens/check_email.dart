import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/reset_password.dart';
import 'package:flutter_application_1/widgets/container.dart';


class CheckEmail extends StatelessWidget {
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
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPassword(),
                    ),
                  ),
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(width: 40),
                Text(
                  'Reset Password',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 40),
            Image(image: AssetImage('assets/images/check_your_email.png')),
    
            SizedBox(height: 25),
            Column(
              children: [
                Text('Check your email', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 10,),
                Text(
                  'We have sent a password recover your account',
                  
                ),
                Text(
                  'on email example@gmail.com',
                ),
              ],
            ),

            SizedBox(height: 70),
            MyContainer(
              width: 379,
              height: 48,
              radius: 15,
              color: AppColors.red,
              color1: AppColors.white,
              text: 'Reset Password',
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
