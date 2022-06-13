import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_getx/src/models/todo_model.dart';
import 'package:todo_getx/src/modules/home/dbs/todo_get_storage.dart';

class HomeController extends GetxController {
  List<TodoModel> todoList = [];
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  void onInit() {
    todoList = Get.arguments as List<TodoModel>? ?? [];
    super.onInit();
  }

  void addTodo() {
    todoList.add(TodoModel(
      title: title.text,
      description: description.text,
    ));
    TodoGetStorage().save(todoList);
    title.clear();
    description.clear();
    update(['todoList']);
    Get.back();
  }
}
