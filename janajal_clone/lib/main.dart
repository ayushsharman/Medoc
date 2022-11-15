import 'package:flutter/material.dart';
import 'package:janajal_clone/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login': (context) => loginPage()},
  ));
}
