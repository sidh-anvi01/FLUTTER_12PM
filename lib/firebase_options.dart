// ⚠️  STUB FILE — Replace by running:
//
//   dart pub global activate flutterfire_cli
//   flutterfire configure --project=flutter-firebase-59d00
//
// That command will overwrite this file with your real API keys.
// The app will NOT connect to Firebase until you do this.

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return web;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'Firebase is not configured for ${defaultTargetPlatform.name}. '
          'Run: flutterfire configure --project=flutter-firebase-59d00',
        );
    }
  }

  // ──────────────────────────────────────────────────────────────────────────
  // TODO: Replace ALL values below with real ones from:
  //   flutterfire configure --project=flutter-firebase-59d00
  // ──────────────────────────────────────────────────────────────────────────

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'REPLACE_ME',
    appId: 'REPLACE_ME',
    messagingSenderId: 'REPLACE_ME',
    projectId: 'flutter-firebase-59d00',
    authDomain: 'flutter-firebase-59d00.firebaseapp.com',
    storageBucket: 'flutter-firebase-59d00.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'REPLACE_ME',
    appId: 'REPLACE_ME',
    messagingSenderId: 'REPLACE_ME',
    projectId: 'flutter-firebase-59d00',
    storageBucket: 'flutter-firebase-59d00.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'REPLACE_ME',
    appId: 'REPLACE_ME',
    messagingSenderId: 'REPLACE_ME',
    projectId: 'flutter-firebase-59d00',
    storageBucket: 'flutter-firebase-59d00.firebasestorage.app',
    iosClientId: 'REPLACE_ME',
    iosBundleId: 'REPLACE_ME',
  );
}
