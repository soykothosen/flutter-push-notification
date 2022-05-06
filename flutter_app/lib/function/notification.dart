import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:dio/dio.dart';


Response? response;
var dio = Dio();


void sendNotification({String? title}) async {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  ////Set the settings for various platform
  // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
  const AndroidInitializationSettings initializationSettingsAndroid =
  AndroidInitializationSettings('@mipmap/ic_launcher');
  const IOSInitializationSettings initializationSettingsIOS =
  IOSInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );
  const LinuxInitializationSettings initializationSettingsLinux =
  LinuxInitializationSettings(
    defaultActionName: 'hello',
  );
  const InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      linux: initializationSettingsLinux);
  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  ///
  const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_channel', 'High Importance Notification',
      description: "This channel is for important notification",
      importance: Importance.max);


  response = await dio.get('https://api.bd-school.code-studio4.com/groups/');
  print(response!.data[0]['name']);

  response!.data[0]['name'];



//  flutterLocalNotificationsPlugin.periodicallyShow(
//    0,
//    title,
//    response!.data[0]['name'],
//    RepeatInterval.everyMinute,
//    NotificationDetails(
//      android: AndroidNotificationDetails(channel.id, channel.name,
//          channelDescription: channel.description),
//    ),
//  );

  flutterLocalNotificationsPlugin.show(
    0,
    title,
    response!.data[0]['name'],
    //RepeatInterval.everyMinute,
    NotificationDetails(
      android: AndroidNotificationDetails(channel.id, channel.name,
          channelDescription: channel.description),
    ),
  );

}