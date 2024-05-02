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
    apiKey: 'AIzaSyBy62tB8KRAzu2Mm6ZZYawWpJfYiPp_yX4',
    appId: '1:178268100379:web:0b8d077451158ab40c25be',
    messagingSenderId: '178268100379',
    projectId: 'finalproj-ef2dc',
    authDomain: 'finalproj-ef2dc.firebaseapp.com',
    storageBucket: 'finalproj-ef2dc.appspot.com',
    measurementId: 'G-VF93VM70MS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvjY63ANES8pGsAAr1KcO1_J40M4_TPGM',
    appId: '1:178268100379:android:b3f2c346bfc6d5010c25be',
    messagingSenderId: '178268100379',
    projectId: 'finalproj-ef2dc',
    storageBucket: 'finalproj-ef2dc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZaTv1LRriK73Kp_qZphVlgR0UHxzQ6RY',
    appId: '1:178268100379:ios:979fab8dcd8682d10c25be',
    messagingSenderId: '178268100379',
    projectId: 'finalproj-ef2dc',
    storageBucket: 'finalproj-ef2dc.appspot.com',
    iosBundleId: 'com.example.finalproj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDZaTv1LRriK73Kp_qZphVlgR0UHxzQ6RY',
    appId: '1:178268100379:ios:979fab8dcd8682d10c25be',
    messagingSenderId: '178268100379',
    projectId: 'finalproj-ef2dc',
    storageBucket: 'finalproj-ef2dc.appspot.com',
    iosBundleId: 'com.example.finalproj',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBy62tB8KRAzu2Mm6ZZYawWpJfYiPp_yX4',
    appId: '1:178268100379:web:3e8636ec806ddb180c25be',
    messagingSenderId: '178268100379',
    projectId: 'finalproj-ef2dc',
    authDomain: 'finalproj-ef2dc.firebaseapp.com',
    storageBucket: 'finalproj-ef2dc.appspot.com',
    measurementId: 'G-X98YS4WL0V',
  );

}