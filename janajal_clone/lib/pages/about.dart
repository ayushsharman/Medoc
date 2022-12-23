// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _MyWalletState();
}

class _MyWalletState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blueGrey[600],
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "About Us",
          style: TextStyle(
            color: Colors.blueGrey[600],
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 20,
            ),
            child: Text(
              "\"We're Water Supply and Irrigation Systems based Industary located in New Delhi. Our main aim is to provide Safe Drinking Water to people on cost to cost.\"",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Divider(
            height: 2,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10,
            ),
            child: Text(
              "Contact Details",
              style: TextStyle(
                color: Colors.blueGrey[600],
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10,
            ),
            child: Text(
              "• +919810127627\n• vijaykumar@jaldharaindia.com",
              style: TextStyle(
                color: Colors.blueGrey[600],
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10,
            ),
            child: Text(
              "Servicing Areas",
              style: TextStyle(
                color: Colors.blueGrey[600],
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10,
            ),
            child: Text(
              "• South Delhi",
              style: TextStyle(
                color: Colors.blueGrey[600],
                fontSize: 20,
              ),
            ),
          ),
          Center(
            child: Image.asset('assets/download.jpg'),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  width: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Image.asset('assets/janajalLogo.png'),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      final urlFacebook =
                          Uri.http('www.facebook.com', '/JalDhara568');
                      if (!await launchUrl(urlFacebook)) {
                        throw 'Could not launch $urlFacebook';
                      }
                    },
                    child: Image.asset('assets/facebook.png'),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      final urlWebsite = Uri.http('www.linkedin.com',
                          '/company/jaldhara-enterprises-india/');
                      if (!await launchUrl(urlWebsite)) {
                        throw 'Could not launch $urlWebsite';
                      }
                    },
                    child: Image.asset('assets/linkedin.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: GNav(
        selectedIndex: 2,
        padding: EdgeInsets.all(20),
        gap: 8,
        tabBackgroundColor: Color.fromARGB(64, 60, 105, 126),
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
            icon: Icons.people,
            iconColor: Colors.blue,
            text: "About",
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
