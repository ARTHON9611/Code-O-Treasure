import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCSztLct58OJnuC2K365Nm0c2LiWPGdvNM",
            authDomain: "code-o-treasure-41o91u.firebaseapp.com",
            projectId: "code-o-treasure-41o91u",
            storageBucket: "code-o-treasure-41o91u.appspot.com",
            messagingSenderId: "710426626179",
            appId: "1:710426626179:web:a474af622081d8b363b3b6"));
  } else {
    await Firebase.initializeApp();
  }
}
