

import 'package:flutter/material.dart';

class Showdailog extends StatelessWidget {
  const Showdailog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Show the dialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    child: Container(
                      height: 200, // Adjust height for better fit
                      width: 300,  // Adjust width for better fit
                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          'This is a custom dialog!',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Text('Show button sheet'),
          ),
        ],
      ),
    );
  }
}

