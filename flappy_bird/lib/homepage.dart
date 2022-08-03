import 'dart:async';

import 'package:flappy_bird/bird.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _nameState();
}

class _nameState extends State<HomePage> {
  static double birdYaxis = 0;
  double time = 0;
  double height = 0;
  double initialHeight = birdYaxis;
  bool gameHasStarted = false;

  void jump() {
    setState(() {
      time = 0;
      initialHeight = birdYaxis;
    });
  }

  void startGame() {
    gameHasStarted = true;
    Timer.periodic(
      Duration(milliseconds: 60),
      ((timer) {
        time += 0.05;
        height = -4.9 * time * time + 2.8 * time;
        setState(() {
          birdYaxis = initialHeight - height;
        });
        if (birdYaxis > 1) {
          timer.cancel();
          gameHasStarted = false;
        }
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () {
                if (gameHasStarted) {
                  jump();
                } else {
                  startGame();
                }
              },
              child: AnimatedContainer(
                alignment: Alignment(0, birdYaxis),
                duration: Duration(milliseconds: 0),
                color: Colors.blue,
                child: MyBird(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.brown,
              child: Row(children: [
                Column(
                  children: [
                    Text("SCORE"),
                    Text("0"),
                  ],
                ),
                Column(
                  children: [
                    Text("BEST"),
                    Text("10"),
                  ],
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
