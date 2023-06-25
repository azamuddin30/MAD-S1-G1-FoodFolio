import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDxYIlCFsjEJAyLkuzNVkEgEGAM4eCF12c",
            authDomain: "test-project-42ee0.firebaseapp.com",
            projectId: "test-project-42ee0",
            storageBucket: "test-project-42ee0.appspot.com",
            messagingSenderId: "962141113666",
            appId: "1:962141113666:web:3044e941a7be80dbe58cdb"));
  } else {
    await Firebase.initializeApp();
  }
}
