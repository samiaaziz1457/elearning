import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 16, 98, 133),
          ),
          child: Center(
            child: Text('Item 1', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 66, 130, 170),
          ),
          child: Center(
            child: Text('Item 2', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 300,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}
