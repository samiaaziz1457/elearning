import 'package:flutter/material.dart';

class Gridviewscreen extends StatelessWidget {
  const Gridviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child:  
          GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
           
          ),
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.red,
        
            ),
            Container(
              color: Colors.red,
        
            ),
            Container(
              color: Colors.red,
        
            ),
            Container(
              color: Colors.red,
        
            ),
            Container(
              color: Colors.red,
        
            ),
            


          ],
          
          ),
          )
        ],
      ),
    );
  }
}