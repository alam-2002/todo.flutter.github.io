import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  final _myBox = Hive.box('saveTask');

  List toDoList = [];

  void createInitialData(){
    toDoList = [
      ['slide left to delete the task', false],
      ['click add icon to add new task', false],
      ['click checkbox to mark task as done', true],
    ];
  }

  void loadData(){
    toDoList = _myBox.get('ToDoList');
  }

  void updateDatabase(){
    _myBox.put('ToDoList', toDoList);
  }
}