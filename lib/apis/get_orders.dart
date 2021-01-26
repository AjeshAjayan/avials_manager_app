import 'dart:convert';

import 'package:avilas_manager_app/data_keepers/user_data.dart';
import 'package:avilas_manager_app/helpers/http.dart';
import 'package:avilas_manager_app/models/order.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<List<Order>> getOrders(
  BuildContext context,
  int start,
  int limit,
) async {
  Http http = new Http();

  Response response = await http.get(
      url: 'managers/${UserData.manager.id}/orders?_start=$start&_limit=$limit',
      context: context,
      body: {});

  Iterable json = jsonDecode(response.body);

  return List<Order>.from(json.map((e) => Order.fromJson(e)));
}
