import 'dart:convert';

import 'package:avilas_manager_app/data_keepers/user_data.dart';
import 'package:avilas_manager_app/helpers/http.dart';
import 'package:avilas_manager_app/models/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

Future<List<ShopUserList>> getShopUserList({
  BuildContext context,
  int start,
  int limit,
}) async {
  Http http = new Http();
  Response response = await http.get(
    url: 'managers/${UserData.manager.id}/shops?_start=$start&_limit=$limit',
    context: context,
    body: {},
  );

  Iterable json = jsonDecode(response.body);

  return List<ShopUserList>.from(json.map((e) => ShopUserList.fromJson(e)));
}
