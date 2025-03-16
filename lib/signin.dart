// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:elearning/bottom_navigation.dart';
import 'package:elearning/constant/appcolor.dart';
import 'package:elearning/forgotPassword.dart';

import 'package:flutter/material.dart';

class Signinscreen extends StatelessWidget {
  const Signinscreen({super.key});
  
  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
     final height=MediaQuery.of(context).size.height;
    return Scaffold(
    backgroundColor:Appcolor.basecolor,
     body: 
    
      Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:130),
              child: Image.asset('assets/images/LogoSample_ByTailorBrands_1-removebg-preview (1).png'),
            ), ),
            Padding(
                  padding: EdgeInsets.only(right: 440,top:30),
                  child: Text("Sign In!",style: TextStyle(fontSize:30, fontWeight: FontWeight.bold,color:Appcolor.fontcolor, ),),
                ),
                      SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.only(right: 205),
            child: Text("Login to Your Account to Continue Your Courses",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold))
          ),
          SizedBox(height: 40,),
          Padding(
           padding: const EdgeInsets.only(
            left: 30,
            right:30,
           ),
            child: Column(
             children: [
               TextField(
                 decoration: InputDecoration(
                  labelText: "Email",
              //     border:OutlineInputBorder(
              //   borderRadius:BorderRadius.circular(20),
              //   borderSide: BorderSide(color: Appcolor.basiccolor)
              // ),
            border: InputBorder.none,
              // Removes the border
     focusedBorder: InputBorder.none,
             
            // focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
               filled: true,
               fillColor:  Colors.white,
                  prefixIcon: Icon(Icons.email)
               
                 ),
               ),
                 SizedBox(height:40,),
            TextField(
             decoration: InputDecoration(
              labelText: "Password",
              // border:OutlineInputBorder(
              //   borderRadius:BorderRadius.circular(20),
              //   borderSide: BorderSide(color: const Color.fromARGB(255, 234, 234, 234))
              // ),
            border: InputBorder.none,
              // Removes the border
    focusedBorder: InputBorder.none,
             
              filled: true,
              fillColor:Appcolor.basiccolor,
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility_off),
             ),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Forgotpassword()));
              }, child: Text("Forgot Password?",style: TextStyle(color: Appcolor.fontcolor),)),
            ),
             SizedBox(height: 30,),
          // Padding(
          //   padding: const EdgeInsets.only(left: 5,right: 5),
          //   child: ElevatedButton(onPressed: (){},
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor:Appcolor.maincolor,
          //     padding: EdgeInsets.symmetric(horizontal: 200,vertical: 20),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(30),)),
          //    child: Row(
          //      children: [
          //        Center(
          //          child: Text("Sign In",
          //          style: TextStyle(fontSize: 24,color: Colors.white,fontWeight:FontWeight.bold),
          //          ),
          //        ),
          //     //    SizedBox(width:10,),
          //     // Icon(Icons.arrow_circle_right,color: Colors.white,)
          //      ],
          //    )),
          // ),
           Container(
            width: 535,
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
                
                  width: 200,
                ),
                Text("Sign In",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight:FontWeight.bold),),
                SizedBox(width: 145,),
                 Icon(Icons.arrow_circle_right,color: Colors.white,size: 75,)
              ],
             ),
            )  ,
            Padding(
             padding: const EdgeInsets.only(left: 170,top: 10),
             child: Column(
              children: [
                Row(
                  children: [
                     Text("Don't have an Account?",
             style: TextStyle(fontSize: 20,color: Appcolor.fontcolor),
             ),
                TextButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavigation	()));
                },child: Text("SIGN UP",style: TextStyle(fontSize: 19,color: Appcolor.maincolor),),),
                  ],
                )
              ],
             ),
           )
                ]   ),
          
          )
          ])
    );
  }
}

   