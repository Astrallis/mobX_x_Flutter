// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taskstore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskStore on _TaskStore, Store {
  final _$taskListAtom = Atom(name: '_TaskStore.taskList');

  @override
  ObservableList<Tasket> get taskList {
    _$taskListAtom.reportRead();
    return super.taskList;
  }

  @override
  set taskList(ObservableList<Tasket> value) {
    _$taskListAtom.reportWrite(value, super.taskList, () {
      super.taskList = value;
    });
  }

  final _$_TaskStoreActionController = ActionController(name: '_TaskStore');

  @override
  void add(Tasket task) {
    final _$actionInfo =
        _$_TaskStoreActionController.startAction(name: '_TaskStore.add');
    try {
      return super.add(task);
    } finally {
      _$_TaskStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void delete(String id) {
    final _$actionInfo =
        _$_TaskStoreActionController.startAction(name: '_TaskStore.delete');
    try {
      return super.delete(id);
    } finally {
      _$_TaskStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
taskList: ${taskList}
    ''';
  }
}
