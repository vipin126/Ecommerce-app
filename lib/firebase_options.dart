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
    apiKey: 'AIzaSyDvIVdtVh5oSCdeO_FfITWES4YfEZecyeU',
    appId: '1:755869010185:web:dc679f9885a3ade8386bd8',
    messagingSenderId: '755869010185',
    projectId: 'ecommerce-app-69ba0',
    authDomain: 'ecommerce-app-69ba0.firebaseapp.com',
    storageBucket: 'ecommerce-app-69ba0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCb84ewJyK-HAKoIO3v-cQsFHMt_bqrR2Q',
    appId: '1:755869010185:android:553047f13d2346de386bd8',
    messagingSenderId: '755869010185',
    projectId: 'ecommerce-app-69ba0',
    storageBucket: 'ecommerce-app-69ba0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAq4C0N--3G_OyDTWAjJRPPgZcal6fIzLY',
    appId: '1:755869010185:ios:95fa5326e3cca805386bd8',
    messagingSenderId: '755869010185',
    projectId: 'ecommerce-app-69ba0',
    storageBucket: 'ecommerce-app-69ba0.appspot.com',
    androidClientId: '755869010185-g5fb5sikorncn67rs8pa7uggdj7ssjg7.apps.googleusercontent.com',
    iosClientId: '755869010185-3d2j113840bg8ge3jelrjqukd6ulgpjs.apps.googleusercontent.com',
    iosBundleId: 'com.example.tstore',
  );
}
