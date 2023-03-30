import 'package:eduwithu/screens/Edu/edu_digital_equality_screen.dart';
import 'package:eduwithu/screens/Edu/edu_environment_screen.dart';
import 'package:eduwithu/screens/Edu/edu_gender_equality_screen.dart';
import 'package:eduwithu/screens/Edu/edu_sanitary_screen.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  EducationScreen({Key? key}) : super(key: key);

  final List<String> images = <String>[
    'sanitary.jpg',
    'environment.jpg',
    'digital_equality.jpg',
    'gender_equality.jpg',
  ];

  final List eduacations = [
    EduSanitaryScreen(),
    EduEnvironmentScreen(),
    EduDigitalEqualityScreen(),
    EduGenderEqualityScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'Education',
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
              'All Educations',
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
                              builder: (context) => eduacations[index]));
                    },
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        'assets/images/${images[index]}',
                        width: 300,
                        height: 300,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 17,
                ),
                itemCount: 4,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 7,
              color: Color(0xFF94E1D4),
            ),
            const Text(
              'Education Progress',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/pencil.png',
                      width: 80,
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Hand washing',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/check2.png',
                      width: 80,
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Recycle',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                /*
                      Column(
                        children: [
                          Icon(
                            Icons.emoji_events,
                            size: 60,
                          ),
                          const Text(
                            'good quiz solve',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      )*/
              ],
            )
          ],
        ),
      ),
    );
  }
}
