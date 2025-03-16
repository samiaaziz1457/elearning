


import 'package:elearning/bottom_navigation.dart';



import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:BottomNavigation (),
      debugShowCheckedModeBanner: false,
    );
  }
}