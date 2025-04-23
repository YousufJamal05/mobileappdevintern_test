// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:mobileappdevintern_test/utils/StatisticsCard.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _rowsPerPage = 10;
  int _currentPage = 1;
  final int _totalRows = 30;

  void navigatetoFormscreen(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            SizedBox(height: screenHeight * 0.04),
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
                    Icon(Icons.home, color: Colors.blue),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(Icons.bar_chart, color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(Icons.logout, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
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
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  height: 30,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
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
                          child: Icon(
                            CupertinoIcons.chevron_down,
                            color: Colors.blue,
                            size: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Statisticscard(),
            SizedBox(height: screenHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Past Visits',
                  style: TextStyle(
                    fontFamily: 'Noyh-Medium',
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(5, 71, 120, 1),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.white,
                        offset: Offset(4, 2),
                      )
                    ],
                  ),
                  child: IconButton(
                      onPressed: () {
                        navigatetoFormscreen(context);
                      },
                      icon: Icon(Icons.add,color: Colors.white,)),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: DataTable(
                columnSpacing: 16,
                horizontalMargin: 12,
                columns: [
                  DataColumn(label: Text('Date', style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Market', style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Store Name', style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(label: Center(child: Text('Perfect Score', style: TextStyle(fontWeight: FontWeight.bold)))),
                ],
                rows: [
                  _buildDataRow('18-03-24', 'BAH', 'Lorem Ipsum', 77),
                  _buildDataRow('17-03-24', 'KWT', 'Lorem Ipsum', 90),
                  _buildDataRow('17-03-24', 'MOR', 'Lorem Ipsum', 74),
                  _buildDataRow('20-03-24', 'UAE', 'Lorem Ipsum', 80),
                  _buildDataRow('18-03-24', 'QTR', 'Lorem Ipsum', 60),
                  _buildDataRow('17-03-24', 'KSA', 'Lorem Ipsum', 56),
                  _buildDataRow('17-03-24', 'QMIN', 'Lorem Ipsum', 89),
                  _buildDataRow('18-03-24', 'BAH', 'Lorem Ipsum', 77),
                  _buildDataRow('17-03-24', 'KWT', 'Lorem Ipsum', 90),
                  _buildDataRow('17-03-24', 'MOR', 'Lorem Ipsum', 74),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Rows per page:',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Text(
                  '10'
                ),
                Icon(Icons.arrow_drop_down),
                Text(
                  '1-10 of 30',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.chevron_left, color: Colors.grey,
                    ),
                    Icon(
                      Icons.chevron_right, color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 100), // Extra space for FAB
          ],
        ),
      ),
    );
  }

  DataRow _buildDataRow(String date, String market, String store, int score) {
    return DataRow(cells: [
      DataCell(Text(date)),
      DataCell(Text(market)),
      DataCell(Text(store)),
      DataCell(Center(child: Text(score.toString()))),
    ]);
  }
}