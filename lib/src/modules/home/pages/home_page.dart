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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Sample Todo App'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Get.toNamed(NameRoute.addTodo);
        },
        child: const Icon(Icons.add),
      ),
      body: GetBuilder<HomeController>(
        init: homeController,
        id: 'todoList',
        builder: (_) => Stack(
          children: [
            Container(
              color: Colors.amber,
              height: Get.height,
              width: Get.width,
              child: (homeController.todoList.isEmpty)
                  ? const Center(
                      child: Text("You are free Guy!"),
                    )
                  : ListView.separated(
                      itemCount: homeController.todoList.length,
                      itemBuilder: (context, index) {
                        final item = homeController.todoList[index];
                        return ListTile(
                          title: Text("${item.title}"),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 5,
                          color: Colors.black,
                        );
                      }),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: Get.height * 0.07,
                width: Get.width * 0.3,
                margin: const EdgeInsets.only(bottom: 20, left: 20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: homeController.loadFromApi,
                  child: const Text(
                    "load from AP!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
