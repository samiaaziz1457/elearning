 import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:elearning/crousel_slider.dart';
import 'package:elearning/home.dart';

import 'package:elearning/signin.dart';
import 'package:flutter/material.dart';


class  BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _Lectureno111State();
}

class _Lectureno111State extends State<BottomNavigation> {
  List<IconData> icons = [
    Icons.person,
    Icons.message,
    Icons.settings,
    Icons.alarm,
  ];

  int page = 0;
  PageController pageController = PageController(initialPage: 0);
  Widget PageViewsection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: const [
        Homescreen(),
       Signinscreen (),
       Dialog(),
        CrouselSlider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    

  
  
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.limeAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        activeIndex: page,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          setState(() {
            page = index;
            pageController.animateToPage(index,
                duration: const Duration(microseconds: 200),
                curve: Curves.bounceIn);
          });
        },
        inactiveColor: Colors.grey,
        activeColor: Colors.black,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.none,
        iconSize: 25,
      ),
      body: PageViewsection(),
    );
  }
}

// All Screen to Naviagtw


  
// 2nd navigation

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class chatscreen extends StatelessWidget {
  const chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
  