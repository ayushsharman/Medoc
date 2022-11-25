// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:janajal_clone/utils/icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('assets/cards1.png'),
                  Image.asset('assets/cards2.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: const WormEffect(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                iconButton(
                  icon: Icons.location_on_rounded,
                  heading: "    Locate    ",
                  subheading: "   WATM   ",
                  color: Colors.purple,
                ),
                iconButton(
                  icon: Icons.qr_code,
                  heading: "  Scan ",
                  subheading: "    N PAY  ",
                  color: Colors.blue,
                ),
                iconButton(
                  icon: Icons.question_answer,
                  heading: "   Help    ",
                  subheading: "   Support   ",
                  color: Colors.orange,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent[100],
                ),
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent[100],
                ),
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
