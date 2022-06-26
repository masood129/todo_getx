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

  void customDialog() => Get.defaultDialog(
        title: 'AreU Sure ?',
        content: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('this test will added to your Todo !'),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: Get.height * 0.05,
                      width: Get.width * 0.22,
                      child: const Center(
                        child: Text('Cancel'),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      addTodo();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: Get.height * 0.05,
                      width: Get.width * 0.22,
                      child: const Center(
                        child: Text('Confirm'),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );

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
    Get.snackbar('Successes', 'text Added to  your todo!',
        snackStyle: SnackStyle.GROUNDED, snackPosition: SnackPosition.BOTTOM);
  }
}
