import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/profile.dart';
import 'package:flutter_application_1/widgets/settings.dart';

class Settings extends StatelessWidget {
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
                  'Settings',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 20),
            SettingsWidget(
              icon: Icons.translate,
              text: 'Languages',
              icon1: Icons.arrow_drop_down_outlined,
            ),
            SizedBox(height: 10),
            SettingsWidget(icon: Icons.location_on, text: 'Location'),
            SizedBox(height: 10),
            SettingsWidget(icon: Icons.phone, text: 'Calls'),
            SizedBox(height: 10),
            SettingsWidget(
              icon: Icons.volume_up,
              text: 'Sound and Notification',
            ),
          ],
        ),
      ),
    );
  }
}
