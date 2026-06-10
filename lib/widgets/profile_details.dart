import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';

class ProfileDetailWidget extends StatelessWidget {
  final String? text;

  const ProfileDetailWidget({super.key, this.text});

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 196, 195, 195).withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 1,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        
        children: [
          Text(text ?? '', style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
