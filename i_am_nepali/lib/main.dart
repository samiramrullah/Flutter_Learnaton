import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          centerTitle: true,
          title: const Text(
            'I am Nepali',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('assets/images/flag.jpg'),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 209, 191, 189),
      ),
    );
  }
}
