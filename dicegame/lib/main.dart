import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Dice',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: diceGame(),
      ),
    ),
  );
}

class diceGame extends StatefulWidget {
  @override
  _diceGameState createState() => _diceGameState();
}

class _diceGameState extends State<diceGame> {
  int leftDice = 1;
  int rightDice = 1;
  // if you want both dice to update if you click on any call this function
  void ranDomaizeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('assets/$leftDice.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('assets/$rightDice.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
