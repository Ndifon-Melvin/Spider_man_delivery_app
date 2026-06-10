import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';

class SettingsWidget extends StatelessWidget {
  final IconData? icon;
  final IconData? icon1;
  final String? text;

  const SettingsWidget({super.key, this.icon, this.text, this.icon1});

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        
      ),
      child: Row(
        
        children: [
          Icon(icon, color: AppColors.red),
          SizedBox(width: 20,),
          Text(text ?? '', style: TextStyle(fontSize: 18)),
          Spacer(),
          Icon(icon1,color: AppColors.red)
        ],
      ),
    );
  }
}
