// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:mobileappdevintern_test/utils/StatisticsCard.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: ListView(
          children: [
            SizedBox(height: screenHeight * 0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'alphaventure',
                  style: TextStyle(
                    fontFamily: 'NCS Radhiumz',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(1, 59, 83, 1.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.home,color: Colors.blue,),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(Icons.bar_chart,color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(Icons.logout,color: Colors.black,),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Summary',
                  style: TextStyle(
                    fontFamily: 'Noyh-Medium',
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    )
                  ),
                  height: 30,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    child: Row(
                      children: [
                        Text(
                          'Last 30 Days ',
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Icon(CupertinoIcons.chevron_down,color: Colors.blue,size: 14,),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.02,),
            Statisticscard(),
          ],
        ),
      ),
    );
  }
}
