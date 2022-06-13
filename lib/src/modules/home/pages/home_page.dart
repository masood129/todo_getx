import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/src/modules/home/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.toNamed('/addTodo');
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        color: Colors.amber,
        height: Get.height,
        width: Get.width,
        child: (homeController.todoList.isEmpty)
            ? const Center(
                child: Text("Empty Todooolo's "),
              )
            : ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text("item.title!"),
                  );
                },
              ),
      ),
    );
  }
}
