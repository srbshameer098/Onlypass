// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCc6_EkL4e65itaGAqkE9LvZkv_s6zAFg8',
    appId: '1:90968312072:web:91513fbce4f8c3a9c544bd',
    messagingSenderId: '90968312072',
    projectId: 'onlypass-customer',
    authDomain: 'onlypass-customer.firebaseapp.com',
    storageBucket: 'onlypass-customer.appspot.com',
    measurementId: 'G-5LPW3BQ3WK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyByemAD3TMKy4E63aecR_z4y8ZGjXppEqE',
    appId: '1:90968312072:android:59611983c4958b5dc544bd',
    messagingSenderId: '90968312072',
    projectId: 'onlypass-customer',
    storageBucket: 'onlypass-customer.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVQyw756AZdo4ithQl1xWekxxQHQ3WAVs',
    appId: '1:90968312072:ios:4f1e84b7908b623fc544bd',
    messagingSenderId: '90968312072',
    projectId: 'onlypass-customer',
    storageBucket: 'onlypass-customer.appspot.com',
    iosBundleId: 'com.example.onlypass',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDVQyw756AZdo4ithQl1xWekxxQHQ3WAVs',
    appId: '1:90968312072:ios:4f1e84b7908b623fc544bd',
    messagingSenderId: '90968312072',
    projectId: 'onlypass-customer',
    storageBucket: 'onlypass-customer.appspot.com',
    iosBundleId: 'com.example.onlypass',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCc6_EkL4e65itaGAqkE9LvZkv_s6zAFg8',
    appId: '1:90968312072:web:55dbc8addef3e64ec544bd',
    messagingSenderId: '90968312072',
    projectId: 'onlypass-customer',
    authDomain: 'onlypass-customer.firebaseapp.com',
    storageBucket: 'onlypass-customer.appspot.com',
    measurementId: 'G-5RRJW43JLZ',
  );
}