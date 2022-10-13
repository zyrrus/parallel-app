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
    apiKey: 'AIzaSyCKKC_7nDn-Z1m76a2vHFu63A12_b3SmpU',
    appId: '1:49833848312:web:d35d844b8159318ea0fa0d',
    messagingSenderId: '49833848312',
    projectId: 'parallel-315a9',
    authDomain: 'parallel-315a9.firebaseapp.com',
    storageBucket: 'parallel-315a9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8tYXUqtoCsb4YuYeROh_SmWYj5qHsPEU',
    appId: '1:49833848312:android:de3173b01d1586d4a0fa0d',
    messagingSenderId: '49833848312',
    projectId: 'parallel-315a9',
    storageBucket: 'parallel-315a9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBm113mWNiM9sicNfHR5LvUrWZ779j528o',
    appId: '1:49833848312:ios:b6ab734da55ea808a0fa0d',
    messagingSenderId: '49833848312',
    projectId: 'parallel-315a9',
    storageBucket: 'parallel-315a9.appspot.com',
    iosClientId: '49833848312-6br0fecsnu6t46rvlefffabup9hmq9nr.apps.googleusercontent.com',
    iosBundleId: 'com.example.parallel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBm113mWNiM9sicNfHR5LvUrWZ779j528o',
    appId: '1:49833848312:ios:b6ab734da55ea808a0fa0d',
    messagingSenderId: '49833848312',
    projectId: 'parallel-315a9',
    storageBucket: 'parallel-315a9.appspot.com',
    iosClientId: '49833848312-6br0fecsnu6t46rvlefffabup9hmq9nr.apps.googleusercontent.com',
    iosBundleId: 'com.example.parallel',
  );
}
