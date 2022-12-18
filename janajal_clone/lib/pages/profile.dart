// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.blueGrey[600],
                size: 30,
              ),
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushNamed(context, 'login');
              })
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.blueGrey[600],
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: PhysicalModel(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              elevation: 5.0,
              shadowColor: Colors.black,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  labelText: 'Ayush',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: PhysicalModel(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              elevation: 5.0,
              shadowColor: Colors.black,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  labelText: '7888559896',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: PhysicalModel(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              elevation: 5.0,
              shadowColor: Colors.black,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  labelText: user.email!,
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.blueGrey[600],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Text(
              "About us",
              style: TextStyle(
                color: Colors.blueGrey[600],
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "We're Water Supply and Irrigation Systems based Industary located in New Delhi. Our main aim to provide Safe Drinking Water to people on cost to cost.",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
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
            ),
            child: Text(
              "• +919810127627\n• vijaykumar@jaldharaindia.com",
              style: TextStyle(
                color: Colors.blueGrey[600],
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Text(
              "Service Areas",
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
            ),
            child: Text(
              "• Sangam Vihar, Delhi, India\n• Okhla, Delhi, India\n• Faridabad Sector 23, Haryana, India",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,
              ),
            ),
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
                    onPressed: () async {
                      // final urlWebsite =
                      //     Uri.http('www.janajal.com', '/index.html');
                      // if (!await launchUrl(urlWebsite)) {
                      //   throw 'Could not launch $urlWebsite';
                      // }
                    },
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
        selectedIndex: 3,
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
