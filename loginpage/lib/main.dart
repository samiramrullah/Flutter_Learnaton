import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        body: const SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.00,
                backgroundImage: AssetImage(
                  'assets/images/pic.jpg',
                ),
              ),
              Text(
                'Samir Alam',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Full Stack Developer',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
                width: 160.00,
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 2.00,
                ),
              ),
              Card(
                // color: Colors.white,
                margin:
                    EdgeInsets.symmetric(horizontal: 25.00, vertical: 15.00),
                child: Padding(
                  padding: EdgeInsets.all(0.5),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      // size: 40.0,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      'samiramrullah@gmail.com',
                      style: TextStyle(color: Colors.black, fontSize: 15.00),
                    ),
                  ),
                ),
              ),
              Card(
                  // color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 5.00, horizontal: 24.00),
                  child: Padding(
                      padding: EdgeInsets.all(0.5),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.blueGrey,
                        ),
                        title: Text(
                          '+91-9041952237',
                          style:
                              TextStyle(color: Colors.black, fontSize: 15.00),
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
