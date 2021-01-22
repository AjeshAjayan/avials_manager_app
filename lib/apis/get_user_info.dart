import 'dart:convert';

import 'package:avilas_manager_app/models/manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as httpClient;
import '../helpers/http.dart';

Http http = new Http();

Future<Manager> getUserInfo(int userId, BuildContext context) async {
  httpClient.Response response = await http.get(
    url: 'managers/user/$userId',
    body: {},
    context: context
  );

  return Manager.fromJson(jsonDecode(response.body)[0]);
}