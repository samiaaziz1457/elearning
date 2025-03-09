// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:elearning/constant/appcolor.dart';
import 'package:elearning/signin.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            ),
          
          ),
               Padding(
                  padding: EdgeInsets.only(right: 320,top:30),
                  child: Text("Getting Started.!",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.only(right: 210),
            child: Text("Create an Account to Continue your allCourses",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold))
          ),

          SizedBox(height:40,),
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
              //   // borderSide: BorderSide(color: Appcolor.basiccolor)
                
              // ),
           
              //  focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                border: InputBorder.none,
              // Removes the border
    focusedBorder: InputBorder.none,
             
               filled: true,

               fillColor: const Color.fromARGB(255, 255, 255, 255),
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
              fillColor:Colors.white,
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility_off),
             ),
            ),
            SizedBox(height:40,),
            TextField(
             decoration: InputDecoration(
              labelText: "Confrim Password",
              // border:OutlineInputBorder(
              //   borderRadius:BorderRadius.circular(20),
              //   borderSide: BorderSide(color:Appcolor.basiccolor)
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
             ]
           ),
         ),
          SizedBox(height: height*0.009,),
          // Padding(
          //   padding: const EdgeInsets.only(left: 30,right: 30),
          //   child: ElevatedButton(onPressed: (){},
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor:Appcolor.maincolor,
          //     padding: EdgeInsets.symmetric(horizontal: 200,vertical: 20),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(30),          )
          //   ),
             
          //    child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //      children: [

          //        Text("Sign Up",
          //        style: TextStyle(fontSize: 25,color: Colors.white,fontWeight:FontWeight.bold),
          //        ),
                
          //     Icon(Icons.arrow_circle_right,color: Colors.white,)
          //      ],
          //    )),
          // ),
           Padding(
             padding: const EdgeInsets.only(right: 20,left: 20),
             child: Container(
              width: 540,
              height: 75.w,
             decoration: BoxDecoration( 
              color:Appcolor.maincolor,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color:Appcolor.maincolor),
              
              boxShadow:[ BoxShadow(
                color:const Color.fromARGB(255, 226, 226, 226),blurRadius: 10,spreadRadius: 2, )]),
               child: Row(
                children: [
                  SizedBox(
                  
                    width: 235,
                  ),
                  Text("Sign Up",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight:FontWeight.bold),),
                  SizedBox(width: 100,),
                   Icon(Icons.arrow_circle_right,color: Colors.white,size: 75,)
                ],
               ),
              ),
           )  ,
           SizedBox(height: 10.h,
           ),

           Padding(
             padding: const EdgeInsets.only(left: 20),
             child: Column(
              children: [
                Row(
                  children: [
                     Text(" Already have an Account?",
             style: TextStyle(color:Appcolor.fontcolor),
             ),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signinscreen()));
                },child: Text("Sign IN"),),
                  ],
                )
              ],
             ),
           )   ],
      ),
        
 
 
     
   );
  
  }
}
