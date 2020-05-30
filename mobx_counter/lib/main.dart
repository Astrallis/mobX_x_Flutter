import 'package:flutter/material.dart';
import 'package:mobx_counter/counterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterPage());
  }
}