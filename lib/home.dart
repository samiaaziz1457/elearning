import 'package:elearning/constant/appcolor.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.basecolor,
     body: 
     Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,right: 200),
            child: Text("Hi, Roland A. Martin",style: TextStyle(fontSize: 35,color: Appcolor.maincolor,fontWeight:FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100,top: 10),
            child: Text("What Would you to like to learn Today?",style: TextStyle(fontSize: 24,color: Appcolor.fontcolor),),
          ),
          SizedBox(height: 40,),
        //  TextField(
        //          decoration: InputDecoration(
        //           labelText: "search for",
        //            border: InputBorder.none,
        //       focusedBorder: InputBorder.none,
        //       filled: true,
        //       fillColor:Colors.white,
        //       prefixIcon: Icon(Icons.search),
        //        suffixIcon: Icon(Icons.filter_list),
             
        //           ))
        Container(
          height: 80,
          width: 500,
         decoration: BoxDecoration( 
              color:Appcolor.basecolor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color:const Color.fromARGB(255, 245, 245, 245)),
              
              boxShadow:[ BoxShadow(
                color:const Color.fromARGB(255, 226, 226, 226),blurRadius: 10,spreadRadius: 2, )]),
                child: Row(
                  children: [
                    Icon(Icons.search,size: 50,),
                    SizedBox(width:10,),
                    Text("search for",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 24,color: Appcolor.fontcolor),),
                    SizedBox(width: 290,),
                    Icon(Icons.tune,size: 30,)
                  ],
                 ),
                 )
           
        ],
       ),
     ),
    );
  }
}