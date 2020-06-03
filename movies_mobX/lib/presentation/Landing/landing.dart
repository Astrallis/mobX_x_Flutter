import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movies_mobX/models/tile_model.dart';
import 'package:movies_mobX/stores/explore_tiles/explore_listgen.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final ExploreStore exp = new ExploreStore();
  _tile(TileModel tile) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.black,
            image: exp.isLoading
                ? DecorationImage(image: ExactAssetImage("ass"))
                : DecorationImage(
                    image: NetworkImage(tile.posterUrl),
                    fit: BoxFit.cover,
                  )),
        height: 220,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 1),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(child: Text(tile.title, style: TextStyle(color:Colors.white,fontSize:22,fontWeight: FontWeight.w600),)),
                      Container(child: Text(tile.language, style: TextStyle(color:Colors.white54,fontSize: 13,fontWeight: FontWeight.w300),))
                    ],),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(child: Text(tile.rating, style: TextStyle(color:Colors.white,fontSize:15,fontWeight: FontWeight.w500),)),
                      Container(child: Text(tile.year, style: TextStyle(color:Colors.white54,fontSize: 13,fontWeight: FontWeight.w300),))
                    ],)
                  ],),
                ),
                height: 80,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Color(0xff1c1c1c),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    exp.getAll();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                "Explore",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                "Trending Shows",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 20),
            Observer(
              builder: (context) => CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  height: 220,
                  autoPlayInterval: Duration(seconds: 3),
                ),
                items: [0, 1, 2, 3, 4].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return exp.isLoading
                          ? Container(
                              height: 30, child: CupertinoActivityIndicator())
                          : _tile(exp.trend[i]);
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
