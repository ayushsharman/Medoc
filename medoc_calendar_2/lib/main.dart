import 'package:flutter/material.dart';
import 'package:medoc_calendar_2/event_calendar.dart';

void main() {
  runApp(const medoc_calendar());
}

class medoc_calendar extends StatelessWidget {
  const medoc_calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Medoc Calendar",
      home: EventCalendarScreen(),
    );
  }
}
