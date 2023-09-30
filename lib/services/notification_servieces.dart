import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notify_Helper{
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  initializeNotification() async {
    // tz.initializeTimeZones(); // You can uncomment this line if needed
    // This is for the latest iOS settings
    // final IOSInitializationSettings initializationSettingsIOS =
    //     IOSInitializationSettings(
    //   requestSoundPermission: false,
    //   requestBadgePermission: false,
    //   requestAlertPermission: false,
    //   onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    // );

    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("appicon"); // Fixed the string parameter

    final InitializationSettings initializationSettings =
        InitializationSettings(
      // iOS: initializationSettingsIOS,
      android: initializationSettingsAndroid,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: selectNotification,
    );
  }

}