import 'package:flutter/material.dart';

class TileModel {
  String title;
  String release;
  String language;
  String rating;
  String posterUrl;
  String year;
  String director;
  String plot;
  String genre;
  String totalSeasons;

  TileModel(
      {@required title,
  @required release,
  @required language,
  @required rating,
  @required posterUrl,
  @required year,
  @required director,
  @required plot,
  @required genre,
  @required totalSeasons});

  TileModel.fromMap(Map<String , dynamic> map){
    title = map['Title'];
    year = map['Year'];
    posterUrl = map['Poster'];
    release = map['Released'];
    rating = map["imdbRating"];
    language = map["Language"];
    director = map["Director"];
    plot = map["Plot"];
    genre = map["Genre"];
    totalSeasons = map["totalSeasons"];
  }
}