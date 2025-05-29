import 'package:flutter/material.dart';
import 'package:mini_project/button_style.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[60],
      appBar: AppBar(
        backgroundColor: Color(0xffFACC06),
        title: Text(
          'Logout',
          style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
        ),
      ),

      body: Center(
        child: Container(
          width: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Are you sure you wan t to logout?', style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),),
              ),
              SizedBox(height: 20,),
             MyButtonStyle(title: 'Logout')
            ],
          ),
        ),
      ),
    );
  }
}