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
    apiKey: 'AIzaSyAIahJWz-Juf_X2-vMlLutM1wFVTq6kVlY',
    appId: '1:649634826070:web:fa4f9f82deb82bfa6978f7',
    messagingSenderId: '649634826070',
    projectId: 'evalflutter-f7a56',
    authDomain: 'evalflutter-f7a56.firebaseapp.com',
    storageBucket: 'evalflutter-f7a56.appspot.com',
    measurementId: 'G-V36D0Y2CQB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFhjSemMGbySCFp_I9QBHta5cCcrGbmo4',
    appId: '1:649634826070:android:ccbba17bc5c7999c6978f7',
    messagingSenderId: '649634826070',
    projectId: 'evalflutter-f7a56',
    storageBucket: 'evalflutter-f7a56.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCIHSCFIJ3h7vgnmTwlxTYYnTZlGRMpK_E',
    appId: '1:649634826070:ios:fe817c113d3779466978f7',
    messagingSenderId: '649634826070',
    projectId: 'evalflutter-f7a56',
    storageBucket: 'evalflutter-f7a56.appspot.com',
    iosBundleId: 'com.example.evalFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCIHSCFIJ3h7vgnmTwlxTYYnTZlGRMpK_E',
    appId: '1:649634826070:ios:fe817c113d3779466978f7',
    messagingSenderId: '649634826070',
    projectId: 'evalflutter-f7a56',
    storageBucket: 'evalflutter-f7a56.appspot.com',
    iosBundleId: 'com.example.evalFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAIahJWz-Juf_X2-vMlLutM1wFVTq6kVlY',
    appId: '1:649634826070:web:ab15a9ca39a08a516978f7',
    messagingSenderId: '649634826070',
    projectId: 'evalflutter-f7a56',
    authDomain: 'evalflutter-f7a56.firebaseapp.com',
    storageBucket: 'evalflutter-f7a56.appspot.com',
    measurementId: 'G-CMQ5YZECSB',
  );
}
