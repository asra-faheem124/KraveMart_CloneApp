import 'package:flutter/material.dart';
import 'package:mini_project/address.dart';
import 'package:mini_project/constant.dart';
import 'package:mini_project/logout.dart';
import 'package:mini_project/orders.dart';
import 'package:mini_project/payments.dart';
import 'package:mini_project/profile.dart';
import 'package:mini_project/terms_and_conditions.dart';
import 'package:mini_project/vouchers.dart';
import 'package:mini_project/wallet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[60],
        appBar: AppBar(
          backgroundColor: Color(0xffFACC06),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Location',
                style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
              ),
              SizedBox(height: 5),
              Text(
                '4-D, 13/4, Nazimabad no.4',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'assets/images/krave-logo.png',
                    height: 80,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person_2_outlined),
                  title: Text('Profile', style: TextStyle(fontFamily: 'Poppins'),),
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      ),
                ),
                ListTile(
                  leading: Icon(Icons.list),
                  title: Text('Orders & Reordering', style: TextStyle(fontFamily: 'Poppins'),),
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Orders()),
                      ),
                ),
                ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text('Address', style: TextStyle(fontFamily: 'Poppins'),),
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Address()),
                      ),
                ),
                ListTile(
                  leading: Icon(Icons.account_balance_wallet_outlined),
                  title: Text('Wallet', style: TextStyle(fontFamily: 'Poppins'),),
                   onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wallet()),
                      ),
                ),
                ListTile(
                  leading: Icon(Icons.confirmation_num_outlined),
                  title: Text('Vouchers', style: TextStyle(fontFamily: 'Poppins'),),
                   onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vouchers()),
                      ),
                ),
                ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text('Payments', style: TextStyle(fontFamily: 'Poppins'),),
                    onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Payments()),
                      ),
                ),
                Divider(height: 2),
                ListTile(
                  leading: Icon(Icons.article_outlined),
                  title: Text('Terms & Conditions', style: TextStyle(fontFamily: 'Poppins'),),
                    onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TermsAndConditions()),
                      ),
                ),
                ListTile(
                  leading: Icon(Icons.logout_outlined, color: Colors.red),
                  title: Text('Logout', style: TextStyle(color: Colors.red, fontFamily: 'Poppins')),
                   onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Logout()),
                      ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  width: 380,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search for fruits, vegetables and more',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'FREE DELIVERY',
                        style: TextStyle(
                          fontSize: 42,
                          fontFamily: 'Poppins-ExtraBold',
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              offset: Offset(1, 1),
                              color: Color(0xffFACC06),
                              blurRadius: 3,
                            ),
                          ],
                        ),
                      ),

                      Text(
                        'ON ORDERS ABOVE Rs. 499',
                        style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              offset: Offset(1, 1),
                              color: Color(0xffFACC06),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 380,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/krave-banner.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SubHeading(title: 'Special Promotions'),
                SizedBox(height: 20),
                RowComponent(
                  title1: 'Flash Deal',
                  title2: 'Stay Hydrated',
                  title3: 'Fruits & Vegetables',
                  image1: 'assets/images/dew.png',
                  image2: 'assets/images/water.png',
                  image3: 'assets/images/fruits.png',
                ),
                SizedBox(height: 20),
                SubHeading(title: 'Bari Eid, Bari Sale'),
                SizedBox(height: 20),
                RowComponent(
                  title1: 'Food Essentials',
                  title2: 'Instant Kraving',
                  title3: 'Eid \n Essentials',
                  image1: 'assets/images/food.png',
                  image2: 'assets/images/craving.png',
                  image3: 'assets/images/eid.png',
                ),
                SizedBox(height: 20),
                SubHeading(title: 'Most Popular'),
                SizedBox(height: 20),
                RowComponent(
                  title1: 'Krave Bakery',
                  title2: 'New Arrivals',
                  title3: 'Chicken, Fish\n& Meat',
                  image1: 'assets/images/bakery.png',
                  image2: 'assets/images/new.png',
                  image3: 'assets/images/chicken.png',
                ),
                SizedBox(height: 20),
                SubHeading(title: 'Beauty & Personal Care'),
                SizedBox(height: 20),
                RowComponent(
                  title1: 'Face & Skin Care',
                  title2: 'Hair Care',
                  title3: 'Makeup &\nBeauty',
                  image1: 'assets/images/skin.png',
                  image2: 'assets/images/hair.png',
                  image3: 'assets/images/makeup.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SubHeading extends StatelessWidget {
  final String title;
  const SubHeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      child: Text(title, style: headingOne, textAlign: TextAlign.start),
    );
  }
}

class RowComponent extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;

  final String image1;
  final String image2;
  final String image3;
  const RowComponent({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.image1,
    required this.image2,
    required this.image3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(title1, style: subHeading),
              SizedBox(height: 10),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(image1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(title2, style: subHeading),
              SizedBox(height: 10),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(image2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(height: 5),
              Text(title3, style: subHeading, textAlign: TextAlign.center),
              SizedBox(height: 5),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(image3),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
