// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Statisticscard extends StatelessWidget {
  const Statisticscard({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          height: 200,
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade200
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                percent: 0.6,
                radius: 50,
                lineWidth: 8,
                center: Text(
                  '60',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                progressColor: Colors.blue,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              Text(
                'Average Perfect Store Score',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
