import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class Quickaletdailog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QuickAlert Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            QuickAlert.show(
              context: context,
              type: QuickAlertType.confirm,
              title: 'Confirm Logout',
              text: 'Do you want to logout?',
              confirmBtnText: 'Yes',
              cancelBtnText: 'No',
              confirmBtnColor: Colors.green,
             
             
            );
          },
          child: Text('Show Alert'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Quickaletdailog(),
  ));
}
