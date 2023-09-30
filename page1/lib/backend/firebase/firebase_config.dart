import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBPTVd4p8n8MPhvjM293aywtYjD_NrVDYE",
            authDomain: "billinginterface-bfc53.firebaseapp.com",
            projectId: "billinginterface-bfc53",
            storageBucket: "billinginterface-bfc53.appspot.com",
            messagingSenderId: "1044358377208",
            appId: "1:1044358377208:web:cf2c2f75c41d430760150d",
            measurementId: "G-89V7FRSLHL"));
  } else {
    await Firebase.initializeApp();
  }
}
