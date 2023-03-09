import 'package:flutter/material.dart';

void main() => runApp(EduECompleteScreenApp());

class EduECompleteScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: EduSanitaryNextScreen(),
    );
  }
}

class EduSanitaryNextScreen extends StatefulWidget {
  EduSanitaryNextScreen({Key? key}) : super(key: key);

  @override
  _EduSanitaryNextScreenState createState() => _EduSanitaryNextScreenState();
}

class _EduSanitaryNextScreenState extends State<EduSanitaryNextScreen> {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'Sanitary',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      // VideoPlayerController가 초기화를 진행하는 동안 로딩 스피너를 보여주기 위해
      // FutureBuilder를 사용합니다.
      body: SingleChildScrollView(
          child: Column(children: [
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 130),
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
                    'images/ThumbsUp.png',
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
                  Navigator.pushNamed(context, '/a');
                }),
            const SizedBox(height: 30),
          ],
        )),
      ])),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}
