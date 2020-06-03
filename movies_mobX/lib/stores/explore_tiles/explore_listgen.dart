import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:movies_mobX/env/app_env.dart';
import 'package:movies_mobX/models/tile_model.dart';
import 'package:movies_mobX/static_data/static.dart';
import 'package:http/http.dart' as http;

part 'explore_listgen.g.dart';

class ExploreStore = _ExploreStore with _$ExploreStore;

abstract class _ExploreStore with Store{
  @observable
  bool _isLoading=true;
  bool get isLoading => _isLoading;
  @observable
  ObservableList<TileModel> _trendMov= new ObservableList<TileModel>();
  ObservableList<TileModel> get trend => _trendMov;
  @observable
  ObservableList<TileModel> _series= new ObservableList<TileModel>();
  ObservableList<TileModel> get series => _series;
  @observable
  ObservableList<TileModel> _movies= new ObservableList<TileModel>();
  ObservableList<TileModel> get movies => _movies;
  @action
  getAll() async{
    Statics stats=new Statics();
    for(int i=0;i<5;i++)
    {
      http.Response response = await http.get(AppEnvironment.baseApiUrl+"t="+stats.trend[i]);
      _trendMov.add(TileModel.fromMap(json.decode(response.body)));
    }
    _isLoading=false;
  }
}