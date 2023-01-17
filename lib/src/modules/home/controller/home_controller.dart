import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/src/models/todo_model.dart';
import 'package:todo_getx/src/modules/home/api/home_api.dart';
import 'package:todo_getx/src/modules/home/component/dialog_contianer.dart';
import 'package:todo_getx/src/modules/home/dbs/todo_get_storage.dart';

class HomeController extends GetxController {
  List<TodoModel> todoList = [];
  TextEditingController title = TextEditingController();

  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  void loadFromApi() {
    HomeAPI().getTodos().then((value) {
      todoList.addAll(value);
      update(['todoList']);
    });
  }

  void loadData() {
    todoList = Get.arguments as List<TodoModel>? ?? [];
    update();
  }

  void customDialog() => Get.defaultDialog(
        title: 'AreU Sure ?',
        content: DialogContainer(
            onConfirmTap: () {
          Get.back();
          addTodo();
        }),
      );

  void addTodo() {
    todoList.add(
      TodoModel(
        id: Random().nextInt(100),
        title: title.text,
        completed: true,
        userId: 1,
      ),
    );
    print('todoList: $todoList');
    // TodoGetStorage().save(todoList);
    print('hereree');
    title.clear();
    update(['todoList']);
    Get.back();
    Get.snackbar('Successes', 'text Added to  your todo!',
        snackStyle: SnackStyle.GROUNDED, snackPosition: SnackPosition.BOTTOM);
  }
}
