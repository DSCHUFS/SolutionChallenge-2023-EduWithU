import 'package:flutter/material.dart';

void main() => runApp(EduGenderCompleteScreenApp());

class EduGenderCompleteScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: EduGenderNextScreen(),
    );
  }
}

class EduGenderNextScreen extends StatefulWidget {
  EduGenderNextScreen({Key? key}) : super(key: key);

  @override
  _EduGenderNextScreenState createState() => _EduGenderNextScreenState();
}

class _EduGenderNextScreenState extends State<EduGenderNextScreen> {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'Gender',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 700),
                    Column(children: [
                      Container(
                        margin: EdgeInsets.all(30),
                        padding: EdgeInsets.all(20),
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Text(
                          'Complete!!',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(
                            'assets/images/ThumbsUp.png',
                            height: 250,
                            width: 250,
                          )),
                    ]),
                    const SizedBox(height: 50),
                    ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(primary: const Color(0xFF94E1D4)),
                        child: Text('Main'),
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/a', (route) => false);
                        }),
                    const SizedBox(height: 30),
                  ],
                )),
          ])),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}
