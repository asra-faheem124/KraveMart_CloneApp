import 'package:flutter/material.dart';
import 'package:mini_project/button_style.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AdressState();
}

class _AdressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.grey[60],
       appBar: AppBar(
        backgroundColor: Color(0xffFACC06),
        title: Text(
          'Address',
          style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
        ),
      ),
      body: 
      Column(
        children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50)
          ),
          width: 370,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Home',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.home, color: Color(0xffFACC06),),
              focusedBorder: OutlineInputBorder(),
            ),
            maxLines: 2,
          ),
        ),
      ),
      Container(
        height: 570,
      ),
      MyButtonStyle(title: 'Add New Address')
        ]
      ),
    );
  }
}