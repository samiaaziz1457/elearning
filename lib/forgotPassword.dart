import 'package:elearning/constant/appcolor.dart';
import 'package:elearning/verify.dart';

import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.basecolor,
      body: 
      Column(
        children: [
           Center(
            child: Padding(
              padding: const EdgeInsets.only(top:180),
              child: Image.asset('assets/images/LogoSample_ByTailorBrands_1-removebg-preview (1).png'),
            ),
          
          ),
          SizedBox(
            height: 40,
          ),
          Text("Select which contact details should we use to",style: TextStyle(fontSize: 17,color: Appcolor.fontcolor,),),
          Text(" Reset Your Password",style: TextStyle(fontSize: 19,color: Appcolor.fontcolor,fontWeight: FontWeight.bold)),
     SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Container(
            width: 515,
            height: 100,
          decoration: BoxDecoration(
            color:Appcolor.basiccolor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color:Appcolor.basiccolor),
            boxShadow:[ BoxShadow(
              color:const Color.fromARGB(255, 226, 226, 226),blurRadius: 10,spreadRadius: 2,
            )]
           
          ),
          child: Row(
            children: [  
              Padding(
                padding: const EdgeInsets.only(left:20,bottom: 10),
                
                child: Text("Via email",style: TextStyle(color: Appcolor.fontcolor,fontSize: 20),)
                // Icon(Icons.email,color:Appcolor.fontcolor),
                  
              ),
              SizedBox(width: 10,),

            ],
          ),
          
          ),
        ),
        SizedBox(height: 10,),
          // Padding(
          //   padding: const EdgeInsets.only(left: 40,right:40),
          //   child: ElevatedButton(onPressed: (){
          //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Verifyscreen()));
          //   },
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor:Appcolor.maincolor,
          //     padding: EdgeInsets.symmetric(horizontal: 200,vertical: 20),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(30),          )
          //   ),              
          //    child: Row(
          //      children: [
          //        Text("Continue",
          //        style: TextStyle(fontSize: 25,color: Colors.white,fontWeight:FontWeight.bold),
          //        ),
                
          //   // Icon(Icons.arrow_circle_right,color: Colors.white,)
          //      ],
          //    )),
          // ),
          InkWell(onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Verifyscreen()));
          },
            child:Container(
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
            )         
          )
        ],
      )
    );
  }
}