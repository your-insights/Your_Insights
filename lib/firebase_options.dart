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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAVZd_kKuKEMWv8tLQN3Fea0Cs4y21QCdQ',
    appId: '1:291171854987:web:7d88e575df15f620dbc28e',
    messagingSenderId: '291171854987',
    projectId: 'yourinsights-9a1dd',
    authDomain: 'yourinsights-9a1dd.firebaseapp.com',
    storageBucket: 'yourinsights-9a1dd.appspot.com',
    measurementId: 'G-STL50FNHW5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMmOYuFYpGOnWRxHduAdXAPWnBT_NVFTM',
    appId: '1:291171854987:android:7d9d36e916cb944bdbc28e',
    messagingSenderId: '291171854987',
    projectId: 'yourinsights-9a1dd',
    storageBucket: 'yourinsights-9a1dd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9ufP69IR9ep9RxIvBazNSuYg2lzrXLVA',
    appId: '1:291171854987:ios:3c322aabae31a3a4dbc28e',
    messagingSenderId: '291171854987',
    projectId: 'yourinsights-9a1dd',
    storageBucket: 'yourinsights-9a1dd.appspot.com',
    iosClientId: '291171854987-c3ln0b9t3fhkr6nud7f0jqdr4i3s77pj.apps.googleusercontent.com',
    iosBundleId: 'com.example.yourInsights',
  );
}
