import 'package:auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eduwithu/Data/Edudata_Read.dart';
import 'package:eduwithu/screens/Home&Profile/home_screen.dart';
import 'package:eduwithu/screens/Home&Profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class TestL extends StatefulWidget {
  const TestL({Key? key}) : super(key: key);

  @override
  State<TestL> createState() => _TestLState();
}

class _TestLState extends State<TestL> {
  final db = FirebaseFirestore.instance.collection('Test');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edu with U',
      home: Scaffold(
        body: ElevatedButton(
          onPressed: () async {
            await FirebaseAuth.instance.createUserWithEmailAndPassword(email: , password: );
            FirebaseAuth.instance.currentUser?.sendEmailVerification();
          },
          child: Text(
              'Login'
          ),
        ),
      ),
    );
    ;
  }
}