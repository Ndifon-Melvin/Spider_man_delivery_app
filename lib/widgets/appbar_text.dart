import 'package:flutter/material.dart';

class AppBarText extends StatelessWidget {
  final String text;

  const AppBarText({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),);
  }
}