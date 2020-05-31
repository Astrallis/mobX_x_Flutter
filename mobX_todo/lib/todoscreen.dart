import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobX_todo/store/taskstore.dart';
import 'package:uuid/uuid.dart';

import 'model/taskModel.dart';

class ToDo extends StatefulWidget {
  @override
  _ToDoState createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  final TaskStore taskStore = new TaskStore();

  final TextEditingController titleController = new TextEditingController();

  final TextEditingController descController = new TextEditingController();

  final Uuid uid = new Uuid();

  final Tasket dummy = Tasket(title: "LOLOLO", desc: "LMFAO", id: "lelelele");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Enter Title",
                    hintStyle: TextStyle(color: Colors.white38)),
                controller: titleController,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Enter Description",
                    hintStyle: TextStyle(color: Colors.white38)),
                controller: descController,
              ),
              SizedBox(height: 20),
              FlatButton(
                  onPressed: add,
                  color: Colors.black,
                  child:
                      Text("ADD TASK", style: TextStyle(color: Colors.white))),
              Observer(
                builder: (context) => ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      Boxer(task: taskStore.tasks[index]),
                  itemCount: taskStore.taskList.length,
                ),
              ),
            ],
          ),
        ));
  }

  void add() {
    Tasket task = new Tasket(
        title: titleController.text, desc: descController.text, id: uid.v1());
    print(task.id);
    taskStore.add(task);
  }
}

class Boxer extends StatefulWidget {
  final Tasket task;
  Boxer({@required this.task});

  @override
  _BoxerState createState() => _BoxerState();
}

class _BoxerState extends State<Boxer> {
  final TaskStore taskStore = new TaskStore();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white, width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.task.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold)),
                  Text(widget.task.desc,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300))
                ],
              ),
              GestureDetector(
                  child: Icon(Icons.delete, color: Colors.white),
                  onTap: () {
                    print(widget.task.id);
                    // taskStore.delete(widget.task.id);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
