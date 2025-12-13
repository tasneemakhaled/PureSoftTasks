import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fruit_app/core/services/local_notification_service.dart';

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static Future initalize() async {
    await messaging.requestPermission();

    // 🔥 تعديل: السطر ده مهم جداً عشان النوتيفيكيشن تظهر كـ Pop-up في الأيفون والبرنامج مفتوح
    await messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    String? token = await messaging.getToken();
    log(token ?? 'null');

    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LocalNotificationService.showForeGroundNotification(
        message.notification?.title,
        message.notification?.body,
      );
    });
  }

  static Future<void> handleBackgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();
    log(message.notification?.title ?? 'null');
  }
}
