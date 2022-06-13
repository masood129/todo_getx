import 'package:get/get.dart';
import 'package:todo_getx/src/models/todo_model.dart';

class HomeController extends GetxController {
  List<TodoModel> todoList = [];

  @override
  void onInit() {
    todoList = Get.arguments as List<TodoModel>? ?? [];
    super.onInit();
  }
}
