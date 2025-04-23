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
          height: 150,
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
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(
                  'Average Perfect Store Score',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade200
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '60%',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(1, 59, 83, 1.0),
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Column(
                        children: [
                          Text(
                            'Planogram',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Compliance',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      )
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade200
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '58%',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(1, 59, 83, 1.0),
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Column(
                          children: [
                            Text(
                              'Share of',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Shelf (SOS)',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade200
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '62%',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(1, 59, 83, 1.0),
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Column(
                          children: [
                            Text(
                              'Must Stock',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'List',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade200
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '63%',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(1, 59, 83, 1.0),
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Column(
                          children: [
                            Text(
                              'On Shelf',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Availability',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
