import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/profile.dart';
import 'package:flutter_application_1/widgets/profile.dart';

class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Save Places',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 50,),
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
            SizedBox(height: 15,),
            Text('Full Name'),
            SizedBox(height: 15,),
            ProfileWidget(
              text: 'John Doe',
            ),
          ],
        ),
      ),
    );
  }
}
