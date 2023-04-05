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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWk_l7hHUFeWMphhkd5LMrAhEZ6RCEUc4',
    appId: '1:586723330577:android:2d3a0001676c5e7993ffb0',
    messagingSenderId: '586723330577',
    projectId: 'whatsapp-clone-backend-bab1c',
    storageBucket: 'whatsapp-clone-backend-bab1c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzNs_cRtwrUhNbqzHnbHlbm8hUOlzzR7A',
    appId: '1:586723330577:ios:cb78b75d6d3b579b93ffb0',
    messagingSenderId: '586723330577',
    projectId: 'whatsapp-clone-backend-bab1c',
    storageBucket: 'whatsapp-clone-backend-bab1c.appspot.com',
    iosClientId: '586723330577-ce4kvraqr34chvcco86s5tjs7o0q1rc1.apps.googleusercontent.com',
    iosBundleId: 'com.niloybiswas.whatsappClone',
  );
}
