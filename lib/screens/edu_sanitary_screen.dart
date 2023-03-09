import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'edu_sanitary_complete_screen.dart';

void main() => runApp(EduSanitaryScreenApp());

class EduSanitaryScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: EduSanitaryScreen(),
    );
  }
}

class EduSanitaryScreen extends StatefulWidget {
  EduSanitaryScreen({Key? key}) : super(key: key);

  @override
  _EduSanitaryScreenState createState() => _EduSanitaryScreenState();
}

class _EduSanitaryScreenState extends State<EduSanitaryScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  get floatingActionButton => null;

  @override
  void initState() {
    // VideoPlayerController를 저장하기 위한 변수를 만듭니다. VideoPlayerController는
    // asset, 파일, 인터넷 등의 영상들을 제어하기 위해 다양한 생성자를 제공합니다.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    // 컨트롤러를 초기화하고 추후 사용하기 위해 Future를 변수에 할당합니다.
    _initializeVideoPlayerFuture = _controller.initialize();

    // 비디오를 반복 재생하기 위해 컨트롤러를 사용합니다.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // 자원을 반환하기 위해 VideoPlayerController를 dispose 시키세요.
    _controller.dispose();
    super.dispose();
  }

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
        FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // 만약 VideoPlayerController 초기화가 끝나면, 제공된 데이터를 사용하여
              // VideoPlayer의 종횡비를 제한하세요.
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: ClipRRect(
                  child: Stack(children: [
                    VideoPlayer(_controller),
                    Center(
                        child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      hoverColor: const Color(0xFF94E1D4),
                      onPressed: () {
                        // 재생/일시 중지 기능을 `setState` 호출로 감쌉니다. 이렇게 함으로써 올바른 아이콘이
                        // 보여집니다.
                        setState(() {
                          // 영상이 재생 중이라면, 일시 중지 시킵니다.
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                          } else {
                            // 만약 영상이 일시 중지 상태였다면, 재생합니다.
                            _controller.play();
                          }
                        });
                      },
                      child: Icon(
                        _controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ))
                  ]),
                ),
              );
            } else {
              // 만약 VideoPlayerController가 여전히 초기화 중이라면,
              // 로딩 스피너를 보여줍니다.
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
        const SizedBox(height: 30),
        Center(
            child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF94E1D4),
            onPrimary: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EduSanitaryNextScreen()));
          },
          child: Text('Next'),
        )),
      ])),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}
