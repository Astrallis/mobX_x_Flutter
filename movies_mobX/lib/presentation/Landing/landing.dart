import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Explore",
              style: TextStyle(
                  color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
