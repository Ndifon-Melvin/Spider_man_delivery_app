import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';

class HomeContainer extends StatelessWidget {
  final String? text;
  final double? height;
  final double? width;
  final double? radius;

  const HomeContainer({super.key, this.height, this.radius, this.text, this.width});

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 7),
      margin: EdgeInsets.only(bottom: 5),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.grey2,
        borderRadius: BorderRadius.circular( radius?? 0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text??''),
          Spacer(),
          Row(
            children: [
              Image.asset('assets/images/car.png', height: 40, width: 50),
              Spacer(),
              Image.asset('assets/images/location.png', height: 30, width: 30),
              
            ],
          ),
        ],
      ),
    );
  }
}