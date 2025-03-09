import 'package:flutter/material.dart';

class Gridviewbuildscreen extends StatelessWidget {
  const Gridviewbuildscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> item=List.generate(20, (index)=>'index');
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10.0, crossAxisSpacing: 10.0), itemCount:  item.length, itemBuilder: (context, index){
        return Container(color: Colors.green, child: Column(
          children: [
            
          ],
        ),);
      } ),

    );
  }
}