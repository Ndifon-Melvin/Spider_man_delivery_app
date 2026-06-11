import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/drop_location.dart';
class PackageInformation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        
        children: [
          Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DropLocation()),
                    ),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 60),
                  Text(
                    'Pick Up Locaiton',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
          Container(
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.grey.shade300),
    borderRadius: BorderRadius.circular(10),
  ),
  child: ExpansionTile(
    tilePadding: EdgeInsets.symmetric(horizontal: 15),

    title: Text(
      'Category',
      style: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),

    trailing: Icon(
      Icons.keyboard_arrow_down,
      color: Colors.red,
    ),

    children: [
      ListTile(title: Text('Electronics')),
      ListTile(title: Text('Furniture')),
      ListTile(title: Text('Fashion')),
      ListTile(title: Text('Books')),
    ],
  ),
)
        ],
      ),
    );
  }
}