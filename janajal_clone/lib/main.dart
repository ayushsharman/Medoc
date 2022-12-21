import 'package:flutter/material.dart';
import 'package:janajal_clone/loginPages/login.dart';
import 'package:janajal_clone/loginPages/resetPass.dart';
import 'package:janajal_clone/mainPage.dart';
import 'package:janajal_clone/loginPages/newUser.dart';
import 'package:janajal_clone/pages/delivery.dart';
import 'package:janajal_clone/pages/faq.dart';
import 'package:janajal_clone/pages/gps.dart';
import 'package:janajal_clone/pages/home.dart';
import 'package:janajal_clone/pages/location.dart';
import 'package:janajal_clone/pages/order.dart';
import 'package:janajal_clone/pages/prepaid.dart';
import 'package:janajal_clone/pages/profile.dart';
import 'package:janajal_clone/pages/about.dart';
import 'package:janajal_clone/loginPages/terms.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'main',
      routes: {
        'login': (context) => loginPage(),
        'main': (context) => MainPage(),
        'newUser': (context) => const newUser(),
        'reset': (context) => const ResetPassword(),
        'homePage': (context) => const HomePage(),
        'order': (context) => const OrderPage(),
        'location': (context) => const AddLocation(),
        'gps': (context) => const GpsLocation(),
        'profile': (context) => const MyProfile(),
        'wallet': (context) => const AboutUs(),
        'delivery': (context) => const MyDelivery(),
        'faq': (context) => const MyFaqList(),
        'terms': (context) => const MyTerms(),
        'prepaid': (context) => const PrepaidCard(),
      },
    ),
  );
}
