import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:url_launcher/url_launcher.dart';

class LocalNotifications {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  final AndroidNotificationChannel channel = const AndroidNotificationChannel(
    "MANIK_APP_ID",
    "MANIK_APP_NOTIF_NAME",
    importance: Importance.high,
    playSound: true,
    enableLights: true,
  );

  Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();
    print("A message is showed in background ${message.messageId}");
  }

  Future onClickNotification(String? payload) async {
    if (payload != null)
    {
      if (!await launch(payload)) {
        throw 'Could not launch $payload';
      }
    }
  }

  Future<void> initialize() async {

    // To get a token for the test device
    // FirebaseMessaging.instance.getToken().then((token) => print(" Token :::::::::: $token"));

    var androidSettings = const AndroidInitializationSettings('ic_launcher');
    var iOSSettings = const IOSInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );

    var initSettings = InitializationSettings(android: androidSettings, iOS: iOSSettings);

    await _flutterLocalNotificationsPlugin.initialize(initSettings,
        onSelectNotification: onClickNotification);

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
        alert: true, badge: true, sound: true);
  }

  void foreGroundNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? androidNotification = message.notification!.android;
      print(message.data);
      if (notification != null && androidNotification != null) {
        _flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              playSound: true,
              icon: "@mipmap/ic_launcher",
              largeIcon: const DrawableResourceAndroidBitmap("ic_launcher"),
            ),
          ),
          payload: message.data["url"],
        );
      }
    });
  }
}
