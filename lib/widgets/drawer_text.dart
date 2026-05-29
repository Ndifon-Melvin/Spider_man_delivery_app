import 'package:flutter/material.dart';

class DrawerText extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const DrawerText({
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(text, style: TextStyle(fontSize: 13),),
          onTap: onTap,
        ),
        Transform.translate(
          offset: Offset(0, -15),
          child: Divider(),
        ),
        
      ],
    );
  }
}