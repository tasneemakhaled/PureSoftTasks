import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // هذه الدالة تعمل عند الضغط على الإشعار
  static void onTap(NotificationResponse notificationResponse) {
    print("Notification Tapped: ${notificationResponse.payload}");
  }

  static Future<void> init() async {
    // 1. إعدادات الأندرويد
    // تأكد أن أيقونة @mipmap/ic_launcher موجودة في مجلد android/app/src/main/res/
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    // 2. إعدادات iOS
    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings();

    // 3. تجميع الإعدادات
    const InitializationSettings initializationSettings =
        InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsDarwin,
        );

    // 4. تهيئة المكتبة
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
    );

    // ==================================================
    // 5. طلب الإذن (خطوة ضرورية جداً لأندرويد 13+)
    // ==================================================
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.requestNotificationsPermission();
  }

  // Basic Notification
  static Future<void> showNotification() async {
    const AndroidNotificationDetails
    androidNotificationDetails = AndroidNotificationDetails(
      'channel_id_1', // id: لازم يكون فريد وثابت للقناة دي
      'Basic Notifications', // name: اسم القناة اللي بيظهر للمستخدم في الإعدادات
      channelDescription: 'This channel is for basic notifications',
      importance: Importance.max, // عشان يطلع صوت ويظهر Pop-up
      priority: Priority.high, // نفس الفكرة للأندرويد القديم
      showWhen: true,
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      0, // id للإشعار نفسه
      'Local Notification', // العنوان
      'Welcome to our app', // المحتوى
      notificationDetails,
    );
  }
}
