import 'package:flutter/material.dart';

class showmodelbottom extends StatelessWidget {
  const showmodelbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            ElevatedButton(onPressed: (){
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return Container(
                        height: 500,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text("Uzair")
                          ],),
                        ),
                      );
                    });
            }, child: Text("Pay Now"))
          ],
        ),
    );
  }
}