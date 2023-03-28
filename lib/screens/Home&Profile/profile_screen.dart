import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'images/profile.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Name',
                        style: TextStyle(fontSize: 15),
                      ),
                      IconButton(
                          onPressed: () {
                            print('Modify Profile');
                          },
                          icon: Icon(Icons.chevron_right),
                          color: Colors.black),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                  color: const Color(0xFF94E1D4), height: 10, thickness: 8.0),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '  Level',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.diamond,
                        size: 100,
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          const Text(
                            'Level: 1000',
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '1875/2300',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(
                  color: const Color(0xFF94E1D4), height: 10, thickness: 8.0),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My Achievements',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.emoji_events,
                            size: 60,
                          ),
                          const Text(
                            'good hand washer',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.emoji_events,
                            size: 60,
                          ),
                          const Text(
                            'all challenge finished',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
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
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}
