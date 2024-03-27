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
    apiKey: 'AIzaSyBvrqONMZowUz1d0PH7DcZRyX58g9sogbc',
    appId: '1:912432384346:web:ed625f771300ce5c73cb63',
    messagingSenderId: '912432384346',
    projectId: 'fries-32147',
    authDomain: 'fries-32147.firebaseapp.com',
    storageBucket: 'fries-32147.appspot.com',
    measurementId: 'G-YW21K8MS87',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGHEJ57AHd-JKn-Z-k-wT_UVFrPClIoec',
    appId: '1:912432384346:android:de9fcceb36d0a60773cb63',
    messagingSenderId: '912432384346',
    projectId: 'fries-32147',
    storageBucket: 'fries-32147.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAowi0HbcVhTPsS6JS7RjQla8SgMhTnFZE',
    appId: '1:912432384346:ios:8d6c432ff6be71a573cb63',
    messagingSenderId: '912432384346',
    projectId: 'fries-32147',
    storageBucket: 'fries-32147.appspot.com',
    iosBundleId: 'com.example.eccomerceapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAowi0HbcVhTPsS6JS7RjQla8SgMhTnFZE',
    appId: '1:912432384346:ios:1f2eb0a89437789773cb63',
    messagingSenderId: '912432384346',
    projectId: 'fries-32147',
    storageBucket: 'fries-32147.appspot.com',
    iosBundleId: 'com.example.eccomerceapp.RunnerTests',
  );
}
