import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Mood Assistenat'),
            centerTitle: true,
            backgroundColor: Colors.blue[800],
          ),
          body: Container(
            color: const Color.fromARGB(255, 61, 144, 211),
            child: MoodAssistance(),
          )),
    ),
  );
}

class MoodAssistance extends StatefulWidget {
  @override
  _moodAssistance createState() => _moodAssistance();
}

class _moodAssistance extends State<MoodAssistance> {
  int ballNumber = 1;
  void randomBallGenerator() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      onPressed: () {
        randomBallGenerator();
      },
      child: Image(
        image: AssetImage('assets/ball$ballNumber.png'),
      ),
    ));
  }
}
