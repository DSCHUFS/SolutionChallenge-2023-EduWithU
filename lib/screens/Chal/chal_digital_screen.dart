import 'package:flutter/material.dart';

class ChalDigitalScreen extends StatelessWidget {
  const ChalDigitalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'Digital',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}
