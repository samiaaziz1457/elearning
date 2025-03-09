import 'package:elearning/constant/appcolor.dart';
import 'package:elearning/otp.dart';

import 'package:flutter/material.dart';

class Verifyscreen extends StatelessWidget {
  const Verifyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Appcolor.basecolor,
            body: 
               Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:130),
              child: Image.asset('assets/images/LogoSample_ByTailorBrands_1-removebg-preview (1).png'),
            ), ),
              Padding(
                  padding: EdgeInsets.only(right: 180,top:180),
                  child: Text("Create Your New  Password",style: TextStyle(fontSize:25, fontWeight: FontWeight.bold,color:Appcolor.fontcolor ),),
                ),
                SizedBox(
                  height: 30,
                ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40,left: 40),
                    child:  TextField(
             decoration: InputDecoration(
              labelText: "Password",
             

            // focusedBorder: OutlineInputBorder(

            // ),
                border: InputBorder.none,
              // Removes the border
    focusedBorder: InputBorder.none,
              filled: true,
              fillColor:Colors.white,
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility_off),
             ),
            ),
                  ),
                  SizedBox(height: 30,),
                 Padding(
                   padding: const EdgeInsets.only(right: 40,left: 40),
                   child: TextField(
             decoration: InputDecoration(
              labelText: " Comfrim Password",
              border: InputBorder.none,
              // Removes the border
    focusedBorder: InputBorder.none,
             
           
              filled: true,
              fillColor:Colors.white,
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility_off),
             ),
            ),
                 ),
                 SizedBox(
                height: 50,
                 ),
            //       Padding(
            // padding: const EdgeInsets.only(left: 40,right: 40),
            // child: ElevatedButton(onPressed: (){
            //   //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>()));
            // },
            // style: ElevatedButton.styleFrom(
            //   backgroundColor:Appcolor.maincolor,
            //   padding: EdgeInsets.symmetric(horizontal: 200,vertical: 20),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(30),          )
            // ),
             
            //  child: Row(
            //    children: [
            //      Center(
            //        child: Text("Continue",
            //        style: TextStyle(fontSize: 24,color: Colors.white,fontWeight:FontWeight.bold),
            //        ),
            //      ),
            //   //    SizedBox(width:10,),
            //   // Icon(Icons.arrow_circle_right,color: Colors.white,)
            //    ],
            //  )),
            //       ),   
               // ),
          InkWell(onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>otpscreen()));
          },
              child:   Container(
            width: 515,
            height: 75,
          decoration: BoxDecoration(
            color:Appcolor.maincolor,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color:Appcolor.maincolor),
            
            boxShadow:[ BoxShadow(
              color:const Color.fromARGB(255, 226, 226, 226),blurRadius: 10,spreadRadius: 2, )]),
             child: Row(
              children: [
                SizedBox(
                
                  width: 190,
                ),
                Text("Continue",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight:FontWeight.bold),),
                SizedBox(width: 100,),
                 Icon(Icons.arrow_circle_right,color: Colors.white,size: 75,)
              ],
             ),
            ) ),        

        ]),
                   
    );
  }
}