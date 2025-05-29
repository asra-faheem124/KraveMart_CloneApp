import 'package:flutter/material.dart';
import 'package:mini_project/constant.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[60],
      appBar: AppBar(
        backgroundColor: Color(0xffFACC06),
        title: Text(
          'Terms And Conditions',
          style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 360,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Terms And Conditions',
                  style: TextStyle(fontSize: 25, fontFamily: 'Poppins-Light'),
                ),
        
                SizedBox(height: 20),
                Text(
                  'Krave Mart Terms of Use',
                  style: TextStyle(fontSize: 20, fontFamily: 'Poppins-Light'),
                ),
        
                SizedBox(height: 20),
                Text(
                  "1.1 It is strongly recommended that you read and understand the 'Terms of Use', as by accessing to this Website you're bound by the same and acknowledge that it constitutes as part of the procedure followed by Krave Mart. If you don't agree then, unfortunately, you won't be able to utilize our Website's services.",
                  style: termsText,
                ),
        
                SizedBox(height: 20),
                Text(
                  "1.2 The following Terms of Use posted on Krave Mart is an agreement between us (Website) and you (Visitors) and by visiting our site you hereby are accepting and consenting to the clauses outlined in the Terms of Use. On time to time basis, we may modify the Terms of Use and your continued use of our Website signify that you are bound to approve of our modified Terms of Use.",
                  style: termsText,
                ),
        
                SizedBox(height: 20),
                Text(
                  "1.3 The Website reserves the right to terminate all the clauses of the Terms of Use without any prior notice. Following this termination, Krave Mart also holds the right to revoke the access to your account (User ID and password) which had been issued by our website and should not be able to use our Website from thereon.",
                  style: termsText,
                ),
        
                 SizedBox(height: 20),
                Text(
                  "1.4 To place an order, Users are required to provide accurate personal details and in case there are any changes to be made, re-register it at your earliest.",
                  style: termsText,
                ),
        
                 SizedBox(height: 20),
                Text(
                  "1.5 Krave Mart Users are warned not to provide fraudulent details or details of other person on the behalf of that person. In case of fake order or incorrect information, order will be revocated and the person would be held liable of penalty.",
                  style: termsText,
                ),
        
                SizedBox(height: 20),
                Text(
                  "1.6 In case any unusual activity is noticed from a User's account, User will be held liable for it and immediately denied access to the account. If, however, you are not involved directly in the unusual activity via your account then you may inform us at support@KraveMart.com.",
                  style: termsText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
