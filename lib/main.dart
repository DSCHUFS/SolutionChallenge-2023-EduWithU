<<<<<<< HEAD
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eduwithu/FirebaseTestScreen.dart';
import 'package:eduwithu/LoginTestScreen.dart';
import 'package:eduwithu/screens/Home&Profile/home_screen.dart';
import 'package:eduwithu/screens/Home&Profile/profile_screen.dart';
=======
import 'package:eduwithu/screens/login_screen.dart';
>>>>>>> login
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);

  runApp(TestL());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edu with U',
      home: LoginScreen(),
    );
  }
}

