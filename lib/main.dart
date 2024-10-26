import 'dart:convert';
import 'package:avilas_manager_app/data_keepers/user_data.dart';
import 'package:avilas_manager_app/screens/home_screen.dart';
import 'package:avilas_manager_app/screens/login_screen.dart';
import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'models/manager.dart';

void main() async {
  await DotEnv.load(fileName: ".env");
  FlutterSecureStorage storage = new FlutterSecureStorage();
  final manager = await storage.read(key: 'userData');
  // await storage.delete(key: 'accessToken');
  if(manager != null) {
    UserData.manager = Manager.fromJson(jsonDecode(manager));
  }
  Widget home = await storage.read(key: 'accessToken') == null ? LoginScreen() : MyHomePage();
  runApp(HomeScreen(home));
}

class HomeScreen extends StatelessWidget {

  final Widget home;

  HomeScreen(this.home);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avials - Manager',
      theme: AvialsManagerTheme.theme,
      home: home,
    );
  }
}
