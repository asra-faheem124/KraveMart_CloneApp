import 'package:flutter/material.dart';
import 'package:mini_project/button_style.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey[60],
      appBar: AppBar(
        backgroundColor: Color(0xffFACC06),
        title: Text(
          'Add Payment Method',
          style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
        ),
      ),
      body: Column(
        children: [
             Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Cash on Delivery',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 370,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Cash on Delivery',
                        prefixIcon: Icon(Icons.circle, size: 15, color: Color(0xffFACC06),),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 8,
                        ),
                         focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                                                borderRadius: BorderRadius.circular(30)
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
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Credit Card',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
               MyButtonStyle(title: 'Add Credit/Debit Card')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}