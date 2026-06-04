import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/chat_Screen.dart';

class Chat extends StatelessWidget {
  final String? image;

  const Chat({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen())),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image ?? ''),
                fit: BoxFit.cover,
              ),
            ),
          ),
      
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chucks',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text('I\'ll soon arrive'),
            ],
          ),
          Spacer(),
          Text('9:00 AM'),
        ],
      ),
    );
  }
}
