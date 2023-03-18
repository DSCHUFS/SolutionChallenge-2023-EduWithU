import 'package:eduwithu/screens/home_screen.dart';
import 'package:eduwithu/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class TestF extends StatefulWidget {
  const TestF({Key? key}) : super(key: key);

  @override
  State<TestF> createState() => _TestFState();
}

class _TestFState extends State<TestF> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edu with U',
      home: Scaffold(
        body: Text('abc'),
      ),
    );;
  }
}
