import 'package:flutter/material.dart';
import 'package:movies_mobX/models/tile_model.dart';
import 'package:movies_mobX/presentation/Landing/landing.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  List<TileModel> tiles;

  PageController pageController =
      new PageController(initialPage: 0, keepPage: true);

  int selectedIndex;

  @override
  void initState() {
    selectedIndex = 0; // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          NavigationRail(
              onDestinationSelected: (value) {
                pageController.animateToPage(value,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInCubic);
                setState(() {
                  selectedIndex = value;
                });
              },
              labelType: NavigationRailLabelType.selected,
              backgroundColor: Colors.black,
              destinations: [
                NavigationRailDestination(
                    icon: Icon(Icons.home, color: Colors.white70),
                    selectedIcon: Icon(Icons.home, color: Colors.white),
                    label: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    )),
                NavigationRailDestination(
                    icon: Icon(Icons.save, color: Colors.white70),
                    selectedIcon: Icon(Icons.save, color: Colors.white),
                    label: Text(
                      "Watchlist",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
              selectedIndex: selectedIndex),
          Expanded(
              child: Container(
                  child: PageView(
            controller: pageController,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Explore(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "WishList",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          )))
        ],
      ),
    );
  }
}
