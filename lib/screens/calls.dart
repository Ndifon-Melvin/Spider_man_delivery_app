import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
class Calls extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/call.jpg'), fit: BoxFit.cover)
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.black.withOpacity(0.5)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 190,
                  width: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/call.jpg'), fit: BoxFit.cover)
                  ),
                ),
                SizedBox(height: 10,),
                Text('Chucks', style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600
                ),),
                Text('1:30 mins', style: TextStyle(
                  color: AppColors.white,
                  fontSize: 20,
                ),),
                Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.volume_up, color: AppColors.white,),
                    ),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.mic, color: AppColors.white,),
                    ),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.red,
                        shape: BoxShape.circle
                      ),
                      child: Image.asset('assets/images/phone.png'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}