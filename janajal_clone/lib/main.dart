import 'package:flutter/material.dart';
import 'package:janajal_clone/login.dart';
import 'package:janajal_clone/newUser.dart';
import 'package:janajal_clone/pages/delivery.dart';
import 'package:janajal_clone/pages/faq.dart';
import 'package:janajal_clone/pages/home.dart';
import 'package:janajal_clone/pages/order.dart';
import 'package:janajal_clone/pages/prepaid.dart';
import 'package:janajal_clone/pages/profile.dart';
import 'package:janajal_clone/pages/wallet.dart';
import 'package:janajal_clone/terms.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => loginPage(),
        'newUser': (context) => const newUser(),
        'homePage': (context) => const HomePage(),
        'order': (context) => const OrderPage(),
        'profile': (context) => const MyProfile(),
        'wallet': (context) => const MyWallet(),
        'delivery': (context) => const MyDelivery(),
        'faq': (context) => const MyFaqList(),
        'terms': (context) => const MyTerms(),
        'prepaid': (context) => const PrepaidCard(),
      },
    ),
  );
}
