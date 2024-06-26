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
    apiKey: 'AIzaSyA0vjDm3J0ybKPAR5fjIl5GYtkCpg3Jr0E',
    appId: '1:616592292784:web:c69729233b2a4aa177f475',
    messagingSenderId: '616592292784',
    projectId: 'expense-tracker-39178',
    authDomain: 'expense-tracker-39178.firebaseapp.com',
    storageBucket: 'expense-tracker-39178.appspot.com',
    measurementId: 'G-Q99M8EQL41',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsTzIdSPpz35Brde5Nl21UNIyismTPCjY',
    appId: '1:616592292784:android:4cda0b28aba1202a77f475',
    messagingSenderId: '616592292784',
    projectId: 'expense-tracker-39178',
    storageBucket: 'expense-tracker-39178.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1UJkhiDUoBjPyAbPhKAEsmSQHhuXHrnE',
    appId: '1:616592292784:ios:e3f232ae18a248d177f475',
    messagingSenderId: '616592292784',
    projectId: 'expense-tracker-39178',
    storageBucket: 'expense-tracker-39178.appspot.com',
    iosBundleId: 'com.example.todo04ExpenseTracker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1UJkhiDUoBjPyAbPhKAEsmSQHhuXHrnE',
    appId: '1:616592292784:ios:e3f232ae18a248d177f475',
    messagingSenderId: '616592292784',
    projectId: 'expense-tracker-39178',
    storageBucket: 'expense-tracker-39178.appspot.com',
    iosBundleId: 'com.example.todo04ExpenseTracker',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA0vjDm3J0ybKPAR5fjIl5GYtkCpg3Jr0E',
    appId: '1:616592292784:web:2264e73ead034e2d77f475',
    messagingSenderId: '616592292784',
    projectId: 'expense-tracker-39178',
    authDomain: 'expense-tracker-39178.firebaseapp.com',
    storageBucket: 'expense-tracker-39178.appspot.com',
    measurementId: 'G-CK3DCHKPS9',
  );
}
