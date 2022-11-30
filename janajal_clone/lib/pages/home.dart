// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:janajal_clone/utils/icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 200,
              child: ListView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('assets/cards1.png'),
                  Image.asset('assets/cards2.png'),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: const WormEffect(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconButton(
                  onpressed: 'profile',
                  icon: Icons.location_on_rounded,
                  heading: "Locate",
                  subheading: "WATM",
                  color: Colors.purple,
                ),
                iconButton(
                  onpressed: 'profile',
                  icon: Icons.qr_code,
                  heading: "Scan",
                  subheading: "& Pay",
                  color: Colors.blue,
                ),
                iconButton(
                  onpressed: 'profile',
                  icon: Icons.question_answer,
                  heading: "FAQ &",
                  subheading: "Help",
                  color: Colors.orange,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, 'delivery');
                    // Ye krna hai.........
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (Colors.greenAccent[100]),
                    shadowColor: Colors.grey,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    fixedSize: Size(175, 180),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 90,
                          width: 150,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 15,
                                color: Color.fromARGB(98, 0, 0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/atm card.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Prepaid Card",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'delivery');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (Colors.blue[100]),
                    shadowColor: Colors.grey,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    fixedSize: Size(175, 180),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 90,
                          width: 150,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 15,
                                color: Color.fromARGB(98, 0, 0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/rickshaw.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Place Order",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'delivery');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (Colors.deepOrange[200]),
                    shadowColor: Colors.grey,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    fixedSize: Size(175, 180),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 90,
                          width: 150,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 15,
                                color: Color.fromARGB(98, 0, 0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/home.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "My delivery\n   location",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'wallet');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (Colors.pink[50]),
                    shadowColor: Colors.grey,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    fixedSize: Size(175, 180),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 90,
                          width: 150,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 15,
                                color: Color.fromARGB(98, 0, 0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/card.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "  Top-up\nMy Wallet",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        padding: EdgeInsets.all(20),
        gap: 8,
        tabBackgroundColor: Color.fromARGB(64, 3, 168, 244),
        tabs: [
          GButton(
            onPressed: () {
              Navigator.pushNamed(context, 'homePage');
            },
            icon: Icons.home,
            iconColor: Colors.blue,
            text: "Home",
          ),
          GButton(
            onPressed: () {
              Navigator.pushNamed(context, 'order');
            },
            icon: Icons.local_shipping_sharp,
            iconColor: Colors.blue,
            text: "Orders",
          ),
          GButton(
            onPressed: () {
              Navigator.pushNamed(context, 'wallet');
            },
            icon: Icons.account_balance_wallet_sharp,
            iconColor: Colors.blue,
            text: "Wallet",
          ),
          GButton(
            onPressed: () {
              Navigator.pushNamed(context, 'profile');
            },
            icon: Icons.account_circle_sharp,
            iconColor: Colors.blue,
            text: "Profile",
          ),
        ],
      ),
    );
  }
}
