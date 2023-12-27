import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
          title: const Text(
            'I am Rich',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('assets/images/diamond.jpg'),
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
    ),
  );
}
