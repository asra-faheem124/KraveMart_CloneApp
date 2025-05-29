import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[60],
        appBar: AppBar(
          backgroundColor: Color(0xffFACC06),
          title: Text(
            'Orders',
            style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
          ),
        ),
        body: Column(
          children: [
            Container(
              child: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                labelColor: Colors.black,
                dividerColor: Colors.transparent,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(child: Text('Current')),
                  Tab(child: Text('History')),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No data available',
                        style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: 370,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Krave Express',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Text(
                                      'Completed',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.copy,
                                          color: const Color.fromARGB(
                                            255,
                                            6,
                                            90,
                                            158,
                                          ),
                                        ),
                                        Text(
                                          '6052503',
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              6,
                                              90,
                                              158,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text('22-May-2025 9:23 PM'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: 370,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Krave Express',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Text(
                                      'Completed',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.copy,
                                          color: const Color.fromARGB(
                                            255,
                                            6,
                                            90,
                                            158,
                                          ),
                                        ),
                                        Text(
                                          '6011017',
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              6,
                                              90,
                                              158,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text('19-May-2025 2:16 PM'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
