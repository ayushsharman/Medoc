// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

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
              Navigator.pushNamed(context, 'login');
            },
          )
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
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
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
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
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
                  labelText: 'ashsharman123@gmail.com',
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
            padding: const EdgeInsets.all(12.0),
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
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "JanaJal envisions building India’s first water-sharing economy and the largest decentralized water distribution network through installation and operation of water ATMs. The company is working to make safe drinking water available, accessible, and affordable to the common man in a sustainable manner.",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 0, 0, 0),
            child: Text(
              "Sustainable • Measurable • Agnostic • Resilient • Timely ",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.blueGrey,
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: 63,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      final urlWebsite =
                          Uri.http('www.janajal.com', '/index.html');
                      if (!await launchUrl(urlWebsite)) {
                        throw 'Could not launch $urlWebsite';
                      }
                    },
                    child: Image.asset('assets/janajalLogo.png'),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 63,
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
                          Uri.http('www.facebook.com', '/JanaJalImpact');
                      if (!await launchUrl(urlFacebook)) {
                        throw 'Could not launch $urlFacebook';
                      }
                    },
                    child: Image.asset('assets/facebook.png'),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 63,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      final urlInstagram =
                          Uri.http('www.instagram.com', 'janajalimpact');
                      if (!await launchUrl(urlInstagram)) {
                        throw 'Could not launch $urlInstagram';
                      }
                    },
                    child: Image.asset('assets/instagram.png'),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 63,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      final urlTwitter =
                          Uri.http('www.twitter.com', '/janajalimpact');
                      if (!await launchUrl(urlTwitter)) {
                        throw 'Could not launch $urlTwitter';
                      }
                    },
                    child: Image.asset('assets/twitter.png'),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 63,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      final urlWebsite =
                          Uri.http('www.linkedin.com', '/company/janajal/');
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
