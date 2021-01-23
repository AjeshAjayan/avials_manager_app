import 'dart:convert';

import 'package:avilas_manager_app/helpers/http.dart';
import 'package:avilas_manager_app/models/order.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<List<Order>> getOrders(BuildContext context) async {
  Http http = new Http();

  Response response = await http.get(
    url: 'orders',
    context: context,
    body: {}
  );

  Iterable json = jsonDecode(response.body);

  return List<Order>.from(json.map((e) => Order.fromJson(e)));
}