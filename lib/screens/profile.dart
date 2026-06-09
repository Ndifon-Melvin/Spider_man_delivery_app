import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/change_password.dart';
import 'package:flutter_application_1/screens/navigation.dart';
import 'package:flutter_application_1/screens/profile_details.dart';
import 'package:flutter_application_1/screens/settings.dart';
import 'package:flutter_application_1/screens/sign_In.dart';
import 'package:flutter_application_1/widgets/profile.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(color: AppColors.red),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Navigation(),
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.white,
                          ),
                        ),
                        SizedBox(width: 100),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 23,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -110,
                right: 105,
                child:Container(
                  height: 207,
                  width: 150,
                  decoration: BoxDecoration(
                    color:Colors.transparent,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle
                        ),
                        child: Container(
                          height: 145,
                          width: 145,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.red,
                            image: DecorationImage(image: AssetImage('assets/images/profile_details.png'), fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      Spacer(),
                      Text('John Doe', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                      ),),
                      Text('johndoe@gmail.com')
                    ],
                  ),
                ) 
                ),
            ],
          ),
          SizedBox(height: 130,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileDetails())),
                  child: ProfileWidget(
                    icon: Icons.person,
                    text: 'Profile Details',
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings())),
                  child: ProfileWidget(
                    icon: Icons.settings,
                    text: 'Settings',
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword())),
                  child: ProfileWidget(
                    icon: Icons.lock,
                    text: 'Change Password',
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn())),
                  child: ProfileWidget(
                    icon: Icons.logout,
                    text: 'Logout',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
