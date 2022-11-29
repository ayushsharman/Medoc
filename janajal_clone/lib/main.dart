import 'package:flutter/material.dart';
import 'package:janajal_clone/login.dart';
import 'package:janajal_clone/newUser.dart';
import 'package:janajal_clone/pages/home.dart';
import 'package:janajal_clone/pages/order.dart';
import 'package:janajal_clone/pages/profile.dart';
import 'package:janajal_clone/pages/wallet.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => loginPage(),
      'newUser': (context) => const newUser(),
      'homePage': (context) => HomePage(),
      'order': (context) => const OrderPage(),
      'profile': (context) => const MyProfile(),
      'wallet': (context) => const MyWallet(),
    },
  ));
}
