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
      height: height,
      width: width,
      decoration:BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 215, 214, 214).withOpacity(0.5),
            spreadRadius:0,
            blurRadius:0,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(radius ?? 0),
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