import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/src/modules/home/controller/home_controller.dart';

class AddTodo extends StatelessWidget {
  AddTodo({Key? key}) : super(key: key);
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.article_outlined,
          color: Colors.black,
        ),
        onPressed: () {
          controller.customDialog();
        },
      ),
      appBar: AppBar(
        leading: InkWell(
          onTap: Get.back,
          child: const Icon(Icons.arrow_back_sharp, color: Colors.black),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          'Todo L!st',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: controller.title,
              decoration: const InputDecoration(
                hintText: "title",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
