import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCLHswTPnLvF_dPdsKlHpsGngw8S5NOUP8",
            authDomain: "official-dent-a-i-copy-zyo0js.firebaseapp.com",
            projectId: "official-dent-a-i-copy-zyo0js",
            storageBucket: "official-dent-a-i-copy-zyo0js.appspot.com",
            messagingSenderId: "782888529532",
            appId: "1:782888529532:web:ae6de46962cb81dbad63f9"));
  } else {
    await Firebase.initializeApp();
  }
}
