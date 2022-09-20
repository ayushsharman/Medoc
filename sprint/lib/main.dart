import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SprintApp(),
  ));
}

class SprintApp extends StatelessWidget {
  const SprintApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("SPRINT"),
      ),
    );
  }
}
