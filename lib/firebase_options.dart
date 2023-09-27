// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDF16Rzxu9AoMsa30yW1KhfznaIHL7OG7Y',
    appId: '1:114163500532:web:0510c73643b9bce52e65a1',
    messagingSenderId: '114163500532',
    projectId: 'chat-app-bccbf',
    authDomain: 'chat-app-bccbf.firebaseapp.com',
    storageBucket: 'chat-app-bccbf.appspot.com',
    measurementId: 'G-JG8SWKBGVB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsmBvbmId0EIOMaJJFVuHZxlK6Aqku5nM',
    appId: '1:114163500532:android:7637aa2696fae9692e65a1',
    messagingSenderId: '114163500532',
    projectId: 'chat-app-bccbf',
    storageBucket: 'chat-app-bccbf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCWFpT3TL8P6OWJ6YPE5QgFXH3ZwueKsj8',
    appId: '1:114163500532:ios:6ef2264a46a37e522e65a1',
    messagingSenderId: '114163500532',
    projectId: 'chat-app-bccbf',
    storageBucket: 'chat-app-bccbf.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCWFpT3TL8P6OWJ6YPE5QgFXH3ZwueKsj8',
    appId: '1:114163500532:ios:ba8d143a53946eba2e65a1',
    messagingSenderId: '114163500532',
    projectId: 'chat-app-bccbf',
    storageBucket: 'chat-app-bccbf.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
