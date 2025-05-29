import 'package:flutter/material.dart';
import 'package:mini_project/button_style.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[60],
      appBar: AppBar(
        backgroundColor: Color(0xffFACC06),
        title: Text(
          'Edit Profile',
          style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Delete Account', style: TextStyle(color: Colors.red, fontFamily: 'Poppins'),),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Your Name',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 12,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 12,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(height: 450),
          MyButtonStyle(title: 'Save')
        ],
      ),
    );
  }
}
