import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/onbaording_screens.dart';
import 'package:flutter_application_1/screens/reset_password.dart';
import 'package:flutter_application_1/screens/sign_Up.dart';
import 'package:flutter_application_1/widgets/container.dart';
import 'package:flutter_application_1/widgets/fields.dart';

class SignIn extends StatelessWidget {
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
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>OnbaordingScreens())),
                  child: Icon(Icons.arrow_back_ios)
                  ),
                  SizedBox(width: 80,),
                Text('Sign In', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            ),
            SizedBox(height: 50,),
            Image(image: AssetImage('assets/images/sign_in.png')),
            SizedBox(height:40,),
            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Phone Number',
              size: 16,
              icon: Icons.phone,
            ),
            SizedBox(height: 20,),

            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Password',
              size: 16,
              icon: Icons.lock,
            ),
              SizedBox(height: 5,),
            Row(
              children: [
                Text(''),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword())),
                  child: Text('Forgot your password?', style: TextStyle(
                    fontSize: 15,  
                  ),),
                ),
              ],
            ),
            SizedBox(height: 50,),
            MyContainer(
              width: 379,
              height: 48,
              radius: 15,
              color: AppColors.red,
              color1: AppColors.white,
              text: 'Sign In',
              size: 20,
            ),
              SizedBox(height: 80,),  
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account? ', style: TextStyle(
                  fontSize: 15,  
                ),),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp())),
                  child: Text('Sign Up', style: TextStyle(
                    fontSize: 15,
                    color: AppColors.red,
                    fontWeight: FontWeight.w600
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
