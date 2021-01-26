import 'dart:io';

import 'package:avilas_manager_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Http {
  Http._();

  static final Http _instance = Http._();

  factory Http() {
    return _instance;
  }

  final _storage = new FlutterSecureStorage();

  final String _baseUrl = env['BASE_URL'];

  void _toLogin(http.Response response, context) {
    if (response.statusCode == HttpStatus.forbidden) {
      print("FORBIDEN");
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (_) => LoginScreen(),
      //   ),
      // );
    }

    return;
  }

  Future<http.Response> postNoAuth({url, body, context}) async {
    http.Response response = await http.post(
      '$_baseUrl/$url',
      body: body,
    );

    _toLogin(response, context);

    return response;

  }

  Future<http.Response> post({url, body, context}) async {
    http.Response response = await http.post(
      '$_baseUrl/$url',
      body: body,
      headers: {
        HttpHeaders.authorizationHeader:
            'Bearer ${await _storage.read(key: 'accessToken')}'
      },
    );

    _toLogin(response, context);

    return response;

  }

  Future<http.Response> put({url, body, context}) async {
    http.Response response = await http.put(
      '$_baseUrl/$url',
      body: body,
      headers: {
        HttpHeaders.authorizationHeader:
            'Bearer ${await _storage.read(key: 'accessToken')}'
      },
    );

    _toLogin(response, context);

    return response;
  }

  Future<http.Response> get({url, body, context}) async {
    http.Response response = await http.get(
      '$_baseUrl/$url',
      headers: {
        HttpHeaders.authorizationHeader:
            'Bearer ${await _storage.read(key: 'accessToken')}'
      },
    );

    _toLogin(response, context);

    return response;
  }

  Future<http.Response> delete({url, body, context}) async {
    http.Response response = await http.delete(
      '$_baseUrl/$url',
      headers: {
        HttpHeaders.authorizationHeader:
            'Bearer ${await _storage.read(key: 'accessToken')}'
      },
    );

    _toLogin(response, context);

    return response;
  }
}
