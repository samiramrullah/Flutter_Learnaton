import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[900],
            title: const Text(
              'Row Placemeht , Challange 3y',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100.00,
                height: 100.00,
                child: const Text('Container 1'),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 100.00,
                        width: 100.00,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 100.00,
                        width: 100.00,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // alignment: Alignment.topRight,
                color: const Color.fromARGB(255, 212, 158, 31),
                height: 100.00,
                width: 100.00,
                child: const Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
