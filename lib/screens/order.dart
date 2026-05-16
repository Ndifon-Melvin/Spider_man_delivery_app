import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/delivery.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(''),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Delivery()),
                  ),
                  child: Text(
                    'Skip',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Image(image: AssetImage('assets/images/place_order.png')),

            SizedBox(height: 10,),
            Center(
              child: Text('Place and order', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text('Register and order for a ', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),),
            ),
            Center(
              child: Text('product or service and we will', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),),
            ),
            Center(
              child: Text('deliver', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),),
            )
          ],
        ),
      ),
    );
  }
}
