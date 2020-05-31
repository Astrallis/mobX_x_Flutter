import 'package:flutter/material.dart';
import 'package:mobX_todo/todoscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDo(),
    );
  }
}