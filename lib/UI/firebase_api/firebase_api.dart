
import 'package:firebase_messaging/firebase_messaging.dart';

var message;
Future<void> handleBackgroundMessage(RemoteMessage )async{



  print('Title: ${message.notification.title}');
  print('Body: ${message.notification.body}');
  print('Playload: ${message.data}');
}

class FirebaseApi{
  final _firebaseMessaging = FirebaseMessaging.instance;
  Future<void> initNotifications()async {

    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    print('Token: $fCMToken');

    // initPushNotification();
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage) ;


  }

 //  void handleMessage(RemoteMessage?message){
 //    if(message == null) return;
 // currentState?.pushNamed(
 //      "/Notification_Screen",
 //      arguments: message,
 //    );
 //  }
 //  Future initPushNotification()async{
 //    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
 //    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
 //  }
}