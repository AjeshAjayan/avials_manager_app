import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationHelper {

  NotificationHelper._();

  static NotificationHelper get _instance => NotificationHelper._();

  factory NotificationHelper() {
    return _instance;
  }

  final FirebaseMessaging _messaging = new FirebaseMessaging();

  static Future<dynamic> _myBackgroundMessageHandler(Map<String, dynamic> message) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }

    // Or do other work.
  }

  void handleBackGroundMessage() async {

    _messaging.subscribeToTopic('greetings');

    _messaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
      //onBackgroundMessage: _myBackgroundMessageHandler,
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );
  }
}
