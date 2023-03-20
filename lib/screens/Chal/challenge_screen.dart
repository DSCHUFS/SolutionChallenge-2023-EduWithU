import 'package:eduwithu/screens/Chal/chal_brush_screen.dart';
import 'package:eduwithu/screens/Chal/chal_digital_screen.dart';
import 'package:eduwithu/screens/Chal/chal_electric_screen.dart';
import 'package:eduwithu/screens/Chal/chal_gender_screen.dart';
import 'package:eduwithu/screens/Chal/chal_handwash_screen.dart';
import 'package:eduwithu/screens/Chal/chal_kiosk_screen.dart';
import 'package:eduwithu/screens/Chal/chal_recycle_screen.dart';
import 'package:flutter/material.dart';

import 'chal_recycle_screen.dart';

class ChallengeScreen extends StatelessWidget {
  ChallengeScreen({Key? key}) : super(key: key);

  final List quiz = [
    ChalElectricScreen(),
    ChalRecycleScreen(),
    ChalGenderScreen(),
  ];
  final List<String> quiz_images = <String>[
    'chal_electric.jpg',
    'chal_recycle.jpg',
    'chal_gender.jpg',
  ];
  final List together = [
    ChalHandwashScreen(),
    ChalBrushScreen(),
  ];
  final List<String> together_images = <String>[
    'chal_handwash.jpg',
    'chal_brush.jpg',
  ];
  final List simulation = [
    ChalKioskScreen(),
    ChalDigitalScreen(),
  ];
  final List<String> simulation_images = <String>[
    'chal_kiosk.jpg',
    'chal_digital.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'Challenge',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE5F7F1),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Quiz',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => quiz[index]));
                    },
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        'assets/images/${quiz_images[index]}',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 17,
                ),
                itemCount: 3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Together',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => together[index]));
                    },
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        'assets/images/${together_images[index]}',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 17,
                ),
                itemCount: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Simulation',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => simulation[index]));
                    },
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        'assets/images/${simulation_images[index]}',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 17,
                ),
                itemCount: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
