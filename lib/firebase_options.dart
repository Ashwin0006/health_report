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
    apiKey: 'AIzaSyDDjGwHllp4Ff2Y5r_ElrmXO4A8txjy_NM',
    appId: '1:31477888973:web:d27028cc8a063419a0b684',
    messagingSenderId: '31477888973',
    projectId: 'ifpwearos-6fbaf',
    authDomain: 'ifpwearos-6fbaf.firebaseapp.com',
    storageBucket: 'ifpwearos-6fbaf.appspot.com',
    measurementId: 'G-5QRS3C8MZ6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlpd02XrBILXTKgxu-MLak7rz2WH1xpXk',
    appId: '1:31477888973:android:b2927b495cc83fb7a0b684',
    messagingSenderId: '31477888973',
    projectId: 'ifpwearos-6fbaf',
    storageBucket: 'ifpwearos-6fbaf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOUYB9IW17x92rTouByEoboFpqlPeouss',
    appId: '1:31477888973:ios:328c50b0eccc3ab0a0b684',
    messagingSenderId: '31477888973',
    projectId: 'ifpwearos-6fbaf',
    storageBucket: 'ifpwearos-6fbaf.appspot.com',
    iosBundleId: 'com.example.healthapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBOUYB9IW17x92rTouByEoboFpqlPeouss',
    appId: '1:31477888973:ios:328c50b0eccc3ab0a0b684',
    messagingSenderId: '31477888973',
    projectId: 'ifpwearos-6fbaf',
    storageBucket: 'ifpwearos-6fbaf.appspot.com',
    iosBundleId: 'com.example.healthapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDDjGwHllp4Ff2Y5r_ElrmXO4A8txjy_NM',
    appId: '1:31477888973:web:cbd8e30e03fecd08a0b684',
    messagingSenderId: '31477888973',
    projectId: 'ifpwearos-6fbaf',
    authDomain: 'ifpwearos-6fbaf.firebaseapp.com',
    storageBucket: 'ifpwearos-6fbaf.appspot.com',
    measurementId: 'G-FKB6FQS0E7',
  );
}
