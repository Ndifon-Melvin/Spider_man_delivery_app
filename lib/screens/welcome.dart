import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/order.dart';
import 'package:flutter_application_1/widgets/container.dart';

class Welcome extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(''),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Order())),
                  child: Text('Skip', style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),),
                ),
              ],
            ),
            SizedBox(height: 60,),
            Image(image: AssetImage('assets/images/spider_man.png')),

            MyContainer(
              height: 63,
              width: 370,
              color1: Colors.white,
              color: const Color.fromARGB(255, 214, 21, 7),
              text: 'Bienvenu',
              size: 23,
              radius: 20,
            ),

            SizedBox(height: 15,),
            MyContainer(
              height: 63,
              width: 370,
              color1: const Color.fromARGB(255, 214, 21, 7),
              color: Colors.white,
              text: 'Welcome',
              size: 23,
              radius: 20,
            ),
          ],
        ),
      ),
    );
  }
}