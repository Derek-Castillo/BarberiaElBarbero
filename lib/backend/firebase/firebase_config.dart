import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBNm44ZTrHxhhQ_hTUswKZX3vpmQecQde4",
            authDomain: "barberiaelbarbero-dc.firebaseapp.com",
            projectId: "barberiaelbarbero-dc",
            storageBucket: "barberiaelbarbero-dc.firebasestorage.app",
            messagingSenderId: "452285580487",
            appId: "1:452285580487:web:1b4abb12e9eb57a9b26ae2",
            measurementId: "G-097FKCTLTC"));
  } else {
    await Firebase.initializeApp();
  }
}
