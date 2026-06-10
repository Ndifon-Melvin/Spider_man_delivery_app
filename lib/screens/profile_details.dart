import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/profile.dart';
import 'package:flutter_application_1/widgets/changepassword.dart';
import 'package:flutter_application_1/widgets/container.dart';


class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
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
                SizedBox(width: 80),
                Text(
                  'Profile Details',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.red,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile_details.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Full Name'),
                PasswordWidget(
                  width: double.infinity,
                  height: 50,
                  radius: 5,
                  text: 'John Doe',
                  color: AppColors.grey,
                ),
                SizedBox(height: 15),
                Text('Email'),
                PasswordWidget(
                  width: double.infinity,
                  height: 50,
                  radius: 5,
                  text: 'johndoe@gmail.com',
                  color: AppColors.grey,
                ),
                SizedBox(height: 15),
                Text('Gender'),
                PasswordWidget(
                  width: double.infinity,
                  height: 50,
                  radius: 5,
                  text: 'Male',
                  color: AppColors.grey,
                ),
                SizedBox(height: 15),
                Text('Phone Number'),
                PasswordWidget(
                  width: double.infinity,
                  height: 50,
                  radius: 5,
                  text: '+237 677756413',
                  color: AppColors.grey,
                ),
                SizedBox(height: 15),
              ],
            ),
            SizedBox(height: 25),
            MyContainer(
              width: double.infinity,
              height: 55,
              radius: 20,
              color: AppColors.red,
              text: 'Save',
              color1: AppColors.white,
              size: 20,
              x: 0,
              y: 4,
            ),
          ],
        ),
      ),
    );
  }
}
