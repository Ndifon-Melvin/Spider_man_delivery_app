import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/navigation.dart';
import 'package:flutter_application_1/widgets/history.dart';



class SavePlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 15),
        child: Column(
          children: [
           Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Navigation())),
                  child: Icon(Icons.arrow_back_ios)
                  ),
                  SizedBox(width: 60,),
                Text('Save Places', style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            ),
            SizedBox(height: 50,),
           HistoryWidget(
            text1:'PK 14',
            color: AppColors.grey,
           ),
           SizedBox(height: 20,),
           HistoryWidget(
            text1:'Bonammoussadi',
            color: AppColors.grey,
           ),
           SizedBox(height: 20,),
           HistoryWidget(
            text1:'Bonapriso',
            color: AppColors.grey,
           ),
            
          ],
        ),
      ),
    );
  }
}