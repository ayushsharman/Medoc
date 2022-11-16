import 'package:flutter/material.dart';
import 'package:janajal_clone/login.dart';
import 'package:janajal_clone/newUser.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => loginPage(),
      'newUser': (context) => newUser(),
    },
  ));
}
