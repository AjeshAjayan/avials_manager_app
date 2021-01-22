
import 'dart:convert';

import 'package:avilas_manager_app/helpers/http.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<List<dynamic>> getOrders(BuildContext context) async {
  Http http = new Http();

  Response response = await http.get(
    url: 'orders',
    context: context,
    body: {}
  );

  return jsonDecode(response.body);
}