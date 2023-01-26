// ignore_for_file: prefer_const_constructors

import 'package:doc_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Color.fromARGB(50, 17, 0, 57),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
