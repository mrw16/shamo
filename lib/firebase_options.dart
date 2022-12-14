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
    apiKey: 'AIzaSyC8S4M0UlAvM82MnsjARknTq6QZhrf83_8',
    appId: '1:958500634011:web:4152a18f9ffcc4e834353e',
    messagingSenderId: '958500634011',
    projectId: 'shamo-22a51',
    authDomain: 'shamo-22a51.firebaseapp.com',
    storageBucket: 'shamo-22a51.appspot.com',
    measurementId: 'G-1Z487S29WG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQUNffSvzX4IR8fm989C5sXXnoYRqJLpg',
    appId: '1:958500634011:android:e2753636b794cb1f34353e',
    messagingSenderId: '958500634011',
    projectId: 'shamo-22a51',
    storageBucket: 'shamo-22a51.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8w3VmxVdDfJKDPMQ4ED9KToBV5HFq5DY',
    appId: '1:958500634011:ios:e46069bcb168d4cd34353e',
    messagingSenderId: '958500634011',
    projectId: 'shamo-22a51',
    storageBucket: 'shamo-22a51.appspot.com',
    iosClientId: '958500634011-oeolralju3pk4i2dlg20e2ohcpuus90f.apps.googleusercontent.com',
    iosBundleId: 'com.example.shamo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8w3VmxVdDfJKDPMQ4ED9KToBV5HFq5DY',
    appId: '1:958500634011:ios:e46069bcb168d4cd34353e',
    messagingSenderId: '958500634011',
    projectId: 'shamo-22a51',
    storageBucket: 'shamo-22a51.appspot.com',
    iosClientId: '958500634011-oeolralju3pk4i2dlg20e2ohcpuus90f.apps.googleusercontent.com',
    iosBundleId: 'com.example.shamo',
  );
}
