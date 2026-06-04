import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/widgets/chat.dart';

class Chats extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, ),
        child: Column(
          children: [
            Chat(image: 'assets/images/chucks1.png'),
            SizedBox(height: 15),
            Chat(image: 'assets/images/chuks2.png'),
            SizedBox(height: 15),
            Chat(image: 'assets/images/chuks3.png'),
            SizedBox(height: 15),
            Chat(image: 'assets/images/chuks4.png'),
            SizedBox(height: 15),
            Chat(image: 'assets/images/chuks5.png'),
            SizedBox(height: 15),
            Chat(image: 'assets/images/chuks6.png'),
            SizedBox(height: 15),
            Chat(image: 'assets/images/chuks7.png'),
            SizedBox(height: 15),
            Chat(image: 'assets/images/chuks8.png'),
            SizedBox(height: 15),
            Chat(image: 'assets/images/chuks9.png'),
          ],
        ),
      ),
    );
  }
}