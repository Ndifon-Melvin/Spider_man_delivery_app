import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/widgets/history.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              HistoryWidget(
                text1: 'ID',
                text2: 'Date',
                text3: 'Status',
                color: AppColors.red,
                textColor: AppColors.white,
              ),
              SizedBox(height: 15),
              HistoryWidget(
                text1: '1',
                text2: '05/05/2023',
                text3: 'Delivered',
                color: AppColors.grey,
              ),
              SizedBox(height: 15),
              HistoryWidget(
                text1: '2',
                text2: '05/05/2023',
                text3: 'Delivered',
                color: AppColors.grey,
              ),
              SizedBox(height: 15),
              HistoryWidget(
                text1: '3',
                text2: '05/05/2023',
                text3: 'In progress',
                color: AppColors.grey,
              ),
              SizedBox(height: 15),
              HistoryWidget(
                text1: '4',
                text2: '05/05/2023',
                text3: 'Pending',
                color: AppColors.grey,
              ),
              SizedBox(height: 15),
              HistoryWidget(
                text1: '5',
                text2: '05/05/2023',
                text3: 'Delivered',
                color: AppColors.grey,
              ),
              SizedBox(height: 15),
              HistoryWidget(
                text1: '6',
                text2: '05/05/2023',
                text3: 'Cancelled',
                color: AppColors.grey,
              ),
              SizedBox(height: 15),
              HistoryWidget(
                text1: '7',
                text2: '05/05/2023',
                text3: 'Delivered',
                color: AppColors.grey,
              ),
              SizedBox(height: 15),
              HistoryWidget(
                text1: '8',
                text2: '05/05/2023',
                text3: 'In progress',
                color: AppColors.grey,
              ),
              SizedBox(height: 15),
              HistoryWidget(
                text1: '9',
                text2: '05/05/2023',
                text3: 'Delivered',
                color: AppColors.grey,
              ),
              SizedBox(height: 15),
              HistoryWidget(
                text1: '10',
                text2: '05/05/2023',
                text3: 'Pending',
                color: AppColors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
