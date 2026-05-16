import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget{
  final double? width;
  final double? height;
  final double? radius;
  final Color? color;
  final String? text;
  final double? size;
  final Color? color1;

  const MyContainer({super.key, this.width, this.height, this.radius, this.color, this.text ,this.size, this.color1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.toDouble(),
      width: width?.toDouble(),
      decoration:BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius?.toDouble() ?? 0),
        border: Border.all(
          color: const Color.fromARGB(255, 214, 21, 7),
          width: 2,
        )
      ),
      child: Center(
        child: Text(text?? '',style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: size?.toDouble(),
          color: color1,
        ),),
      ),
    );
  }
}