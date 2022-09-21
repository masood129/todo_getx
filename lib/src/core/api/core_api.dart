import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class CoreApi {
  final _client = Client();

  Future<Response?> get(
    Uri url, {
    Map<String, String>? headers,
  }) async {
    try {
      return await _client.get(
        url,
        headers: headers ?? {},
      );
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
