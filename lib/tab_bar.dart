import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:elearning/constant/appcolor.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        backgroundColor: Appcolor.basecolor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 200),
                child: Text(
                  "Hi, Roland A. Martin",
                  style: TextStyle(
                      fontSize: 35,
                      color: Appcolor.maincolor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 10),
                child: Text(
                  "What would you like to learn today?",
                  style: TextStyle(fontSize: 24, color: Appcolor.fontcolor),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search for",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 251, 251, 251),
                        width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 1.5),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.filter_list),
                ),
              ),
              SizedBox(height: 20),
              CarouselSlider(
                items: [
                Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('25% Off', style: TextStyle(color: Colors.white, fontSize: 24)),
            SizedBox(height: 10),
            Text("Today's Special",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
            Text(
              'Get a discount for every course order, valid only for today!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    ),
                 
                ],
                options: CarouselOptions(
                  height: 250,
                  viewportFraction: 0.8,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
              ),
              SizedBox(height: 20),
                 Row(
              children: [
                Text("Categories",style: TextStyle(color:Colors.black,fontSize: 20, fontWeight:FontWeight.w500 ),),
            Spacer(),
            TextButton(onPressed: (){}, child: Text("see all",style: TextStyle(color: Appcolor.maincolor,fontSize: 20),)),
                 Icon(Icons.skip_next,color: Appcolor.maincolor,),
              ],
            ),
            Row(
              children: [
                TextButton(onPressed: (){}, child: Text("3D Design",style: TextStyle(color: const Color.fromARGB(255, 9, 72, 120),fontSize: 20)),),
                 SizedBox(width: 50,),
                 TextButton(onPressed: (){}, child: Text("Arts & Humanitie",style: TextStyle(color: Appcolor.maincolor,fontSize: 20)),),
                  SizedBox(width: 50,),
                 TextButton(onPressed: (){}, child: Text("Graphic Design",style: TextStyle(color: Appcolor.maincolor,fontSize: 20)),),

              ],
            ),
            Container(
      child: TabBar(
        isScrollable: true,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        tabs: [
          Tab(text: 'All'),
          Tab(text: 'Graphic Design'),
          Tab(text: '3D Design'),
          Tab(text: 'Arts & Humanities'),
        ],
      ),
    ),
              SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 400),
              child: Text("popular Course",),
            ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text('All Courses')),
                    Center(child: Text('Graphic Design Courses')),
                    Center(child: Text('3D Design Courses')),
                    Center(child: Text('Arts & Humanities Courses')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
  

 
 

 
}
