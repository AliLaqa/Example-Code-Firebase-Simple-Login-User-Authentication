import 'package:firebase_messaging/firebase_messaging.dart';

//creating instance to get device token
final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

Future<void> sendDeviceTokenToServer() async {
  final String? deviceToken = await _firebaseMessaging.getToken();
  if (deviceToken != null) {
    print('Device Token: $deviceToken');
  }
}