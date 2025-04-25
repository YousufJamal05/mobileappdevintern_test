// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobileappdevintern_test/screens/mainScreen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  @override
  void initState()
  {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => MainScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = 0.0;
            var end = 1.0;
            var curve = Curves.easeInOut;

            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var fadeAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: fadeAnimation,
              child: child,
            );
          },
        ),
      );
    });

  }

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/landingscreen.jpg',
              width: screenWidth,
            ),
          ),
          Center(
            child: Text(
              'alphaventure',
              style: TextStyle(
                fontFamily: 'NCS Radhiumz',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(1, 59, 83, 1.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
