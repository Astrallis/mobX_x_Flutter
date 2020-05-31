import 'package:flutter/material.dart';

class Tasket{
  String title;
  String desc;
  String id;

    Tasket(
      {@required this.id,
      @required this.title,
      @required this.desc,});

  Tasket.fromMap(Map<String , dynamic> map){
    id = map['id'];
    title = map['title'];
    desc = map['desc'];
  }
}