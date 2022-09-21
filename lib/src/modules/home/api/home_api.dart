import 'dart:convert';

import 'package:todo_getx/src/core/api/core_api.dart';
import 'package:todo_getx/src/models/todo_model.dart';

class HomeAPI {
  final _api = CoreApi();

  Future<List<TodoModel>> getTodos() async {
    final response =
        await _api.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response != null) {
      final body = response.body;
      final list = jsonDecode(body) as List;
      return list.map((e) => TodoModel.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
