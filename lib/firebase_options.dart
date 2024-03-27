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
    apiKey: 'AIzaSyBntxMQq5N3Q4jl_aTpyrm6mBgbtdMSVk0',
    appId: '1:887585859754:web:2c1522822411132e7c48d3',
    messagingSenderId: '887585859754',
    projectId: 'chat-app-de6f8',
    authDomain: 'chat-app-de6f8.firebaseapp.com',
    storageBucket: 'chat-app-de6f8.appspot.com',
    measurementId: 'G-8JHJ6WTSVW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANz2KVPQ5AF6rOwjOq6Wwg28s3vcc7Bhk',
    appId: '1:887585859754:android:79c4e69bf536c7867c48d3',
    messagingSenderId: '887585859754',
    projectId: 'chat-app-de6f8',
    storageBucket: 'chat-app-de6f8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDr0D4pOxjuMaOnSdCNuupNzjS1NGUVN38',
    appId: '1:887585859754:ios:508553c5157b3b227c48d3',
    messagingSenderId: '887585859754',
    projectId: 'chat-app-de6f8',
    storageBucket: 'chat-app-de6f8.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDr0D4pOxjuMaOnSdCNuupNzjS1NGUVN38',
    appId: '1:887585859754:ios:2263fc82063d61837c48d3',
    messagingSenderId: '887585859754',
    projectId: 'chat-app-de6f8',
    storageBucket: 'chat-app-de6f8.appspot.com',
    iosBundleId: 'com.example.chatapp.RunnerTests',
  );
}