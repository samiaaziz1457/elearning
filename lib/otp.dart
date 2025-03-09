import 'package:elearning/constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class otpscreen extends StatelessWidget {
  const otpscreen({super.key});

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
           padding: const EdgeInsets.only(top: 60),
           child: OtpTextField(
                   numberOfFields: 5,
                   borderColor:Appcolor.maincolor,
                  
                   showFieldAsBox: true, 
                   
                   onCodeChanged: (String code) {
                    
                   },
                   
                   onSubmit: (String verificationCode){
              showDialog(
                  context: context,
                  builder: (context){
                  return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                  );
                  }
              );
                   },
               ),
         ),
    
    SizedBox(height: 250,),
        InkWell(onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>otpscreen()));
          },
              child:   Container(
            width: 480,
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
                Text("verify",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight:FontWeight.bold),),
                SizedBox(width: 120,),
                 Icon(Icons.arrow_circle_right,color: Colors.white,size: 75,)
              ],
             ),
            ) ),
        ]
      ),
    );
  }
}