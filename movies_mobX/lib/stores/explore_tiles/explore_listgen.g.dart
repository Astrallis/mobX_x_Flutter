// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_listgen.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ExploreStore on _ExploreStore, Store {
  final _$_isLoadingAtom = Atom(name: '_ExploreStore._isLoading');

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  final _$_trendMovAtom = Atom(name: '_ExploreStore._trendMov');

  @override
  ObservableList<TileModel> get _trendMov {
    _$_trendMovAtom.reportRead();
    return super._trendMov;
  }

  @override
  set _trendMov(ObservableList<TileModel> value) {
    _$_trendMovAtom.reportWrite(value, super._trendMov, () {
      super._trendMov = value;
    });
  }

  final _$_seriesAtom = Atom(name: '_ExploreStore._series');

  @override
  ObservableList<TileModel> get _series {
    _$_seriesAtom.reportRead();
    return super._series;
  }

  @override
  set _series(ObservableList<TileModel> value) {
    _$_seriesAtom.reportWrite(value, super._series, () {
      super._series = value;
    });
  }

  final _$_moviesAtom = Atom(name: '_ExploreStore._movies');

  @override
  ObservableList<TileModel> get _movies {
    _$_moviesAtom.reportRead();
    return super._movies;
  }

  @override
  set _movies(ObservableList<TileModel> value) {
    _$_moviesAtom.reportWrite(value, super._movies, () {
      super._movies = value;
    });
  }

  final _$getAllAsyncAction = AsyncAction('_ExploreStore.getAll');

  @override
  Future getAll() {
    return _$getAllAsyncAction.run(() => super.getAll());
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
