import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAQ3oHjoUmUu1I3B6Tf4vNw5x-W5pcQoJg",
            authDomain: "points-4bc32.firebaseapp.com",
            projectId: "points-4bc32",
            storageBucket: "points-4bc32.appspot.com",
            messagingSenderId: "692736075102",
            appId: "1:692736075102:web:5503924b1b64c16f101bcf",
            measurementId: "G-06WDPVT5WW"));
  } else {
    await Firebase.initializeApp();
  }
}
