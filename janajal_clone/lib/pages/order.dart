import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderPage(),
                ),
              );
            },
            icon: Icons.local_shipping_sharp,
            iconColor: Colors.blue,
            text: "Orders",
          ),
          GButton(
            icon: Icons.account_balance_wallet_sharp,
            iconColor: Colors.blue,
            text: "Wallet",
          ),
          GButton(
            icon: Icons.account_circle_sharp,
            iconColor: Colors.blue,
            text: "Profile",
          ),
        ],
      ),
    );
  }
}
