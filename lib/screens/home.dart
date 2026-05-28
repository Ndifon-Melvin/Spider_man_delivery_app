import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';

class Home extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Text('Dashborad'),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 15),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: AppColors.red
                ),
                image: DecorationImage(image: AssetImage('assets/images/chucks1.png',), fit: BoxFit.cover)
              ),
            )
          ],
        ),
        drawer: Drawer(
          backgroundColor: AppColors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            children: [
            
            ],
          ),
        ),
    );
  }
}