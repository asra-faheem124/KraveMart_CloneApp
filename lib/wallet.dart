import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 120,
              width: 400,
              color: Colors.grey[200],
              child: Column(
                children: [
                  Text('Your Wallet Amount', style: TextStyle(fontFamily: 'Poppins'),),
                  Text('Rs 0', style: TextStyle(fontSize: 30, fontFamily: 'Poppins', fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
          SizedBox(height: 250,),
          Center(
            child: Container(
              child: Text('No data available', style: TextStyle(fontFamily: 'Poppins', fontSize: 16),),
            ),
          )
        ],
      ),
    );
  }
}