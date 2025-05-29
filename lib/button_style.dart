import 'package:flutter/material.dart';

class MyButtonStyle extends StatelessWidget {
  final String title;
  const MyButtonStyle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 50,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
              ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFACC06),
              ),
              onPressed: () {},
              child: Text(title, style: TextStyle(fontSize: 16, fontFamily: 'Poppins', color: Colors.black)),
            ),
          );
  }
}