import 'dart:convert';

import 'package:todo_getx/src/models/todo_model.dart';

class TodoGetStorage {
  static final TodoGetStorage _instance = TodoGetStorage._internal();

  factory TodoGetStorage() => _instance;

  TodoGetStorage._internal();

  // final box = GetStorage();
  // static const key = 'todo_getx';
  //
  // save(List<TodoModel> todoList) {
  //   box.write(key, json.encode(todoList));
  // }
  //
  // List<TodoModel> load() {
  //   var encodedValue = box.read(key) ?? '';
  //   if (encodedValue == '') return [];
  //   List<dynamic> decodedValue = jsonDecode(encodedValue);
  //   List<TodoModel> sampleList = [];
  //   sampleList.addAll(decodedValue.map((e) => TodoModel.fromJson(e)).toList());
  //   return sampleList;
  // }
}
