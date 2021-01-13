import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:avilas_manager_app/screens/login_screen.dart';
import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avials - Manager',
      theme: AvialsManagerTheme.theme,
      home: LoginScreen(),
    );
  }
}
