import 'package:flutter/material.dart';

class SearchResult {
  String title;
  String year;
  String imdbID;
  String type;
  String posterUrl;

  SearchResult(
      {@required this.title,
      @required this.year,
      @required this.imdbID,
      @required this.type,
      @required this.posterUrl});

  SearchResult.fromMap(Map<String , dynamic> map){
    title = map['Title'];
    year = map['Year'];
    imdbID = map['imdbID'];
    type = map['Type'];
    posterUrl = map['Poster'];
  }
}