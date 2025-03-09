import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CrouselSlider extends StatelessWidget {
  const CrouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the items for the carousel
    List<Widget> items = [
      Container(
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black),
        child: Center(child: Text('Item 1', style: TextStyle(color: Colors.white, fontSize: 24))),
      ),
      Container(
        color: Colors.green,
        child: Center(child: Text('Item 2', style: TextStyle(color: Colors.white, fontSize: 24))),
      ),
      Container(
        color: Colors.blue,
        child: Center(child: Text('Item 3', style: TextStyle(color: Colors.white, fontSize: 24))),
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
              height: 400,
              
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
