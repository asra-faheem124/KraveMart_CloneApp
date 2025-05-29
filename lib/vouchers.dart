import 'package:flutter/material.dart';
import 'package:mini_project/constant.dart';

class Vouchers extends StatelessWidget {
  const Vouchers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[60],
      appBar: AppBar(
        backgroundColor: Color(0xffFACC06),
        title: Text(
          'Vouchers',
          style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            VoucherContainer(
              head: 'PHAL FRUIT',
              subHead: '25%',
              min: '999',
              discount: '400',
              desc: 'Applicable only on Fruits and Vegetables!',
            ),
            VoucherContainer(
              head: 'FREE50',
              subHead: '8%',
              min: '599',
              discount: '50',
              desc: 'Rs. 50 OFF!\nLimit per day:5',
            ),

            VoucherContainer(
              head: 'FREE75',
              subHead: '7%',
              min: '1749',
              discount: '75',
              desc: 'Rs. 75 OFF!\nLimit per day:5',
            ),
          ],
        ),
      ),
    );
  }
}

class VoucherContainer extends StatelessWidget {
  final String head;
  final String subHead;
  final String min;
  final String discount;
  final String desc;
  const VoucherContainer({
    super.key,
    required this.head,
    required this.subHead,
    required this.min,
    required this.discount,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(head, style: vouchersHeading),
                Text(subHead, style: vouchersSubHead),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(
              height: 1,
              color: Colors.grey[200],
              indent: 20,
              endIndent: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Min Order', style: vouchersText),
                Text(min, style: vouchersSubText),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Maximum discount', style: vouchersText),
                Text(discount, style: vouchersSubText),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Description', style: vouchersText),
                Text(desc, style: vouchersSubText),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
