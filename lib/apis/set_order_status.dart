import 'dart:convert';

import 'package:avilas_manager_app/helpers/http.dart';
import 'package:avilas_manager_app/helpers/toster.dart';
import 'package:avilas_manager_app/models/order.dart';
import 'package:flutter/material.dart';

Future<void> setOrderStatus({int id, BuildContext context, Order order}) async {
    Http http = new Http();

    final json = order.toJson();

    try {
      await http.put(
          url: 'orders/${id.toString()}',
          context: context,
          body: null
      );

      Toster.showToster(
          context: context,
          msg: 'Status updated'
      );

    } catch(e) {
      print('error setOrderAsProcessed $e');
      Toster.showToster(
          context: context,
          msg: 'Failed to updated'
      );
    }
}