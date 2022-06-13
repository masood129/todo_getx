import 'package:get/get.dart';
import 'package:todo_getx/src/modules/home/pages/add_todo.dart';
import 'package:todo_getx/src/modules/home/pages/home_page.dart';

import '../../modules/splash/pages/splash_page.dart';

class NameRoute {
  static const String splashPage = "/splashPage";
  static const String homePage = "/homePage";
  static const String addTodo = "/addTodo";
}

class RoutePages {
  static final Pages = [
    GetPage(name: NameRoute.splashPage, page: () => SplashPage()),
    GetPage(name: NameRoute.homePage, page: () =>  HomePage()),
    GetPage(name: NameRoute.addTodo, page: () =>  AddTodo()),
  ];
}
