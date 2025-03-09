// ignore_for_file: prefer_const_constructors, unused_local_variable, sized_box_for_whitespace

import 'dart:async';
import 'package:elearning/constant/appcolor.dart';
import 'package:elearning/login.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()), // Make sure LoginScreen is defined
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
     final height=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 84, 136),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Appcolor.basiccolor),
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/SHAPE.png'),
                        Center(
                          child: Image.asset(
                            "assets/images/LogoSample_ByTailorBrands_1-removebg-preview (1).png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Text(
              'E-LEARNING',
              selectionColor: Colors.white,
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
