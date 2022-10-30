import 'package:flutter/material.dart';
import 'package:calendar_app/calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Medoc Calendar",
      home: Calendar(),
    );
  }
}
