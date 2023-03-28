import 'package:flutter/material.dart';

void main() => runApp(EduEnvironmentScreenApp());

class EduEnvironmentScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: EduEnvironmentScreen(),
    );
  }
}

class EduEnvironmentScreen extends StatefulWidget {
  EduEnvironmentScreen({Key? key}) : super(key: key);

  @override
  _EduEnvironmentScreenState createState() => _EduEnvironmentScreenState();
}

class _EduEnvironmentScreenState extends State<EduEnvironmentScreen> {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xFF94E1D4),
        foregroundColor: Colors.black,
        title: const Text(
          'EduEnvironment',
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
            child: Container(
                margin: EdgeInsets.all(30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Text('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
                ))),
        const SizedBox(height: 30),
        Center(
            child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF94E1D4),
            onPrimary: Colors.white,
          ),
          onPressed: () {
            /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const )
                )*/
          },
          child: Text('Next'),
        )),
      ])),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}
