import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class CrouselSlider extends StatelessWidget {
  const CrouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the items for the carousel
    List<Widget> items = [
      Container(
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 16, 98, 133)),
        child: Center(child: Text('Item 1', style: TextStyle(color: Colors.white, fontSize: 24))),
      ),
      Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),  color: const Color.fromARGB(255, 66, 130, 170),),
       
        child: Center(child: Text('Item 2', style: TextStyle(color: Colors.white, fontSize: 24))),
      ),
      
      
      
    ];

    // Define the callback function for page change
    void callbackFunction(int index, CarouselPageChangedReason reason) {
      print('Current index: $index');
    }

    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            items: items,
            options: CarouselOptions(
              height: 200,
              
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
