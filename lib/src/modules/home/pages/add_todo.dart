import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/src/modules/home/controller/home_controller.dart';

class AddTodo extends StatelessWidget {
  AddTodo({Key? key}) : super(key: key);
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo L!st'),
      ),
      body: Container(
        child: Column(children: <Widget>[
          TextField(
            controller: controller.title,
            decoration: const InputDecoration(
              hintText: "title",
            ),
          ),
          TextField(
            controller: controller.description,
            decoration: const InputDecoration(
              hintText: "Text",
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.blue,
            ),
            onPressed: () {
              controller.addTodo();
            },
          )
        ]),
      ),
    );
  }
}
