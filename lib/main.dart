import 'package:eduwithu/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const TestApp());

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Edu with U',
      home: LoginScreen(),
    );
  }
}
