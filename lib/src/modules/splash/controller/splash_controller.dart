import 'package:get/get.dart';
import 'package:todo_getx/src/core/route/route.dart';
import 'package:todo_getx/src/models/todo_model.dart';
import 'package:todo_getx/src/modules/home/dbs/todo_get_storage.dart';

class SplashController extends GetxController {
  List<TodoModel> todoList = [];

  @override
  void onInit() {
    todoList = TodoGetStorage().load();
    Future.delayed(Duration(seconds: 5), () {
      Get.offAllNamed(NameRoute.homePage, arguments: todoList);
    });
    super.onInit();
  }
}
