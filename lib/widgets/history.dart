import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';

class HistoryWidget extends StatelessWidget {
  final String? text1;
  final String? text2;
  final String? text3;
  final Color? color;
  final Color? textColor;

  const HistoryWidget({
    super.key,
    this.text1,
    this.text2,
    this.text3,
    this.color,
    this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 196, 195, 195).withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 0,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1 ?? '',
            style: TextStyle(
              color: textColor ?? AppColors.black,
              fontSize: textColor != null ? 17 : 15,
              fontWeight: textColor != null ? FontWeight.w500 : FontWeight.w400,
            ),
          ),
          Text(
            text2 ?? '',
            style: TextStyle(
              color: textColor ?? AppColors.black,
              fontSize: textColor != null ? 17 : 15,
              fontWeight: textColor != null ? FontWeight.w500 : FontWeight.w400,
            ),
          ),
          Text(
            text3 ?? '',
            style: TextStyle(
              color: textColor ?? AppColors.black,
              fontSize: textColor != null ? 17 : 15,
              fontWeight: textColor != null ? FontWeight.w500 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
