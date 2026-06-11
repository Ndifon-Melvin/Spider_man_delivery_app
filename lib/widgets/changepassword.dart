import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';

class PasswordWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final Color? color;
  final String? text;
  final double? size;
  final Color? color1;
  final IconData? icon;
  final TextEditingController? controller;

  const PasswordWidget({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.color,
    this.text,
    this.size,
    this.color1,
    this.icon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 196, 195, 195).withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 1,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(radius?.toDouble() ?? 0),
        border: Border.all(color: AppColors.grey, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: text,
                  hintStyle: TextStyle(
                    fontSize: size,
                    color: color1,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
