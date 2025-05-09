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
    apiKey: 'AIzaSyB8egOB0tYGKVdYuOzRSFFrHPvedA7v09M',
    appId: '1:1040092966787:web:897d8598a2f23aecbfd0b6',
    messagingSenderId: '1040092966787',
    projectId: 'ecommerce-ropa-157cf',
    authDomain: 'ecommerce-ropa-157cf.firebaseapp.com',
    storageBucket: 'ecommerce-ropa-157cf.firebasestorage.app',
    measurementId: 'G-61HY784L9D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHDSRuAR4POSU1xcsNHCS42v3tHR-ROIU',
    appId: '1:1040092966787:android:704fe02f4200341dbfd0b6',
    messagingSenderId: '1040092966787',
    projectId: 'ecommerce-ropa-157cf',
    storageBucket: 'ecommerce-ropa-157cf.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZuJDMYxSNLE3zyCRs5ynzl_Fa2d3hq20',
    appId: '1:1040092966787:ios:8c509e673d55bfe3bfd0b6',
    messagingSenderId: '1040092966787',
    projectId: 'ecommerce-ropa-157cf',
    storageBucket: 'ecommerce-ropa-157cf.firebasestorage.app',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZuJDMYxSNLE3zyCRs5ynzl_Fa2d3hq20',
    appId: '1:1040092966787:ios:8c509e673d55bfe3bfd0b6',
    messagingSenderId: '1040092966787',
    projectId: 'ecommerce-ropa-157cf',
    storageBucket: 'ecommerce-ropa-157cf.firebasestorage.app',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB8egOB0tYGKVdYuOzRSFFrHPvedA7v09M',
    appId: '1:1040092966787:web:530e8aa97cabf347bfd0b6',
    messagingSenderId: '1040092966787',
    projectId: 'ecommerce-ropa-157cf',
    authDomain: 'ecommerce-ropa-157cf.firebaseapp.com',
    storageBucket: 'ecommerce-ropa-157cf.firebasestorage.app',
    measurementId: 'G-CNYZM4CWZV',
  );
}
