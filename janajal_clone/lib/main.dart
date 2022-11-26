import 'package:flutter/material.dart';
import 'package:janajal_clone/login.dart';
import 'package:janajal_clone/newUser.dart';
import 'package:janajal_clone/pages/home.dart';
import 'package:janajal_clone/pages/order.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => loginPage(),
      'newUser': (context) => const newUser(),
      'homePage': (context) => HomePage(),
      'order': (context) => OrderPage(),
    },
  ));
}
