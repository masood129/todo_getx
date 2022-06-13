import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/src/modules/splash/controller/splash_controller.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);
  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: const Center(
            child: CircularProgressIndicator(
          color: Colors.blue,
        )),
      ),
    );
  }
}
