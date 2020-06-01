import 'package:mobX_todo/model/taskModel.dart';
import 'package:mobx/mobx.dart';
part 'taskstore.g.dart';

class TaskStore = _TaskStore with _$TaskStore;

abstract class _TaskStore with Store {
  @observable
  ObservableList<Tasket> taskList = ObservableList<Tasket>();

  ObservableList<Tasket> get tasks => taskList;

  @action
  void add(Tasket task) {
    taskList.add(task);
  }

  @action
  void delete(String i) {
    taskList.removeWhere((element) => element.id == i);
  }
}
