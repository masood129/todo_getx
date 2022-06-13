import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/src/core/route/route.dart';
import 'package:todo_getx/src/modules/home/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(NameRoute.addTodo);
        },
        child: const Icon(Icons.add),
      ),
      body: GetBuilder<HomeController>(
        init: homeController,
        id: 'todoList',
        builder: (_) => Container(
          color: Colors.amber,
          height: Get.height,
          width: Get.width,
          child: (homeController.todoList.isEmpty)
              ? const Center(
                  child: Text("You are free Guy!"),
                )
              : ListView.builder(
                  itemCount: homeController.todoList.length,
                  itemBuilder: (context, index) {
                    final item = homeController.todoList[index];
                    return ListTile(
                      title: Text("${item.title}"),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
