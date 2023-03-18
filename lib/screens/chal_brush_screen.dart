import 'package:flutter/material.dart';

class ChalBrushScreen extends StatelessWidget {
  const ChalBrushScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'Brush',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),


      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}
