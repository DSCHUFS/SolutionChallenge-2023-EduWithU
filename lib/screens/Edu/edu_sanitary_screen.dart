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
    _controller = VideoPlayerController.network(
      'https://cdn.pixabay.com/vimeo/413256778/-37274.mp4?width=1280&expiry=1679844390&hash=a395bb689705001ecbff7624b7cce9fe475dca29',
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
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
      body: SingleChildScrollView(
          child: Column(children: [
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
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
                                setState(() {
                                  if (_controller.value.isPlaying) {
                                    _controller.pause();
                                  } else {
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
