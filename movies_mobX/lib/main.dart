import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            "APP LOADED",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
