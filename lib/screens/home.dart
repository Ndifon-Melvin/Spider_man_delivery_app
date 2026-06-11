import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/screens/pick_up_location.dart';
import 'package:flutter_application_1/widgets/home_container.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              Container(
                height: 220,
                width: 385,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/map1.png'),
                    fit: BoxFit.contain,
                  ),
                  border: Border.all(width: 2, color: AppColors.black),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                height: 399,
                width: 385,
                decoration: BoxDecoration(color: AppColors.grey),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 10,
                        right: 15,
                        bottom: 5,
                      ),
                      margin: EdgeInsets.only(bottom: 15),
                      width: 358,
                      height: 90,
                      decoration: BoxDecoration(
                        color: AppColors.grey2,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(''),
                                  SizedBox(width: 30),
                                  Text(
                                    'Where to ?',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Image.asset('assets/images/car.png'),
                            ],
                          ),
              
                          Spacer(),
                          GestureDetector(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>PickUpLocation())),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                              color: AppColors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
              
                    Row(
                      children: [
                        HomeContainer(
                          height: 142,
                          width: 128,
                          radius: 10,
                          text: 'Ndokoti',
                        ),
                        SizedBox(width: 10),
                        HomeContainer(
                          height: 142,
                          width: 162,
                          radius: 10,
                          text: 'New Bell',
                        ),
                      ],
                    ),
              
                    Row(
                      children: [
                        HomeContainer(
                          height: 112,
                          width: 162,
                          radius: 10,
                          text: 'Bonamoussadi',
                        ),
                        SizedBox(width: 10),
                        HomeContainer(
                          height: 112,
                          width: 128,
                          radius: 10,
                          text: 'New Bell',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
