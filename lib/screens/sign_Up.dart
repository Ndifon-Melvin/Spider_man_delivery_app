import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/reset_password.dart';
import 'package:flutter_application_1/screens/sign_In.dart';
import 'package:flutter_application_1/widgets/container.dart';
import 'package:flutter_application_1/widgets/fields.dart';

class SignUp extends StatelessWidget {
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
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(width: 80),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 25),
            Image(image: AssetImage('assets/images/sign_up.png')),
            SizedBox(height: 10),
            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Name',
              size: 16,
              icon: Icons.person,
            ),
            SizedBox(height: 10),

            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Email',
              size: 16,
              icon: Icons.email,
            ),
            SizedBox(height: 10),

            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Phone Number',
              size: 16,
              icon: Icons.phone,
            ),
            SizedBox(height: 10),

            Fields(
              width: 379,
              height: 48,
              radius: 10,
              color: AppColors.grey,
              text: 'Password',
              size: 16,
              icon: Icons.lock,
            ),
            SizedBox(height: 25),

            MyContainer(
              width: 379,
              height: 48,
              radius: 15,
              color: AppColors.red,
              color1: AppColors.white,
              text: 'Sign Up',
              size: 20,
            ),

            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
