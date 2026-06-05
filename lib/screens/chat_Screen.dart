import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/calls.dart';
import 'package:flutter_application_1/screens/navigation.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
        child: Column(
          children: [
            Container(
              height: 90,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Navigation()),
                    ),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/chucks1.png'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Chuks', style: TextStyle(fontSize: 17)),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Calls()),
                    ),
                    child: Icon(Icons.phone, color: AppColors.red)
                    ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Calls()),
                    ),
                    child: Icon(Icons.videocam, color: AppColors.red)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 13,
                    left: 11,
                    right: 7,
                    bottom: 5,
                  ),
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColors.grey2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'i\'ll be there shortly.',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(''),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(''),
                          Spacer(),
                          Text('9:08AM', style: TextStyle(fontSize: 11)),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(''),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(''),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(
                    top: 13,
                    left: 11,
                    right: 7,
                    bottom: 5,
                  ),
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColors.grey2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'i\'ll be waiting.',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(''),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(''),
                          Spacer(),
                          Text('9:08AM', style: TextStyle(fontSize: 11)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/wall.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Type a message',
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 175, 173, 173)
                          ),
                          filled: true,
                          fillColor: AppColors.grey2,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.emoji_emotions_outlined, color: AppColors.red,),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.attach_file, color: AppColors.red),
                              SizedBox(width: 10),
                              Icon(Icons.camera_alt, color: AppColors.red),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                    backgroundColor: AppColors.red,
                    child: Icon(Icons.mic, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
