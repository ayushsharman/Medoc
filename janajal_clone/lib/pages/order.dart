// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "My Orders",
            style: TextStyle(
              color: Colors.blueGrey[600],
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Material(
                elevation: 5,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue[200],
                child: TabBar(
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Colors.blue[900],
                  tabs: [
                    Tab(
                      text: "Current",
                    ),
                    Tab(
                      text: "Previous",
                    ),
                    Tab(
                      text: "Cancelled",
                    ),
                  ],
                  indicator: RectangularIndicator(
                    bottomLeftRadius: 25,
                    topLeftRadius: 25,
                    bottomRightRadius: 25,
                    topRightRadius: 25,
                    color: Color.fromARGB(255, 36, 1, 132),
                    paintingStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: GNav(
          selectedIndex: 1,
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
      ),
    );
  }
}
