import 'package:get/get.dart';
import 'package:todo_getx/src/core/route/route.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 5), () {
      Get.offAllNamed(NameRoute.homePage);
    });
    super.onInit();
  }
}
