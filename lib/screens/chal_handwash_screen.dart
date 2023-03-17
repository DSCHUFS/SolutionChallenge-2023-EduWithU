import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(ChalHandwashScreenApp());

class ChalHandwashScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: ChalHandwashScreen(),
    );
  }
}

class ChalHandwashScreen extends StatefulWidget {
  ChalHandwashScreen({Key? key}) : super(key: key);

  @override
  _ChalHandwashScreenState createState() => _ChalHandwashScreenState();
}

class _ChalHandwashScreenState extends State<ChalHandwashScreen>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;
  late AnimationController _timer;
  late Animation<Color?> _colorTween;
  late Future<void> _initializeVideoPlayerFuture;

  get floatingActionButton => null;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    _timer = AnimationController(vsync: this, duration: Duration(seconds: 7))
      ..addListener(() {
        setState(() {});
      });

    _timer.forward();

    _timer.addListener(() {
      // setState를 주지 않으면 애니메이션이 적용되지 않습니다.
      setState(() {});
      print(_timer.value);
    });

    _timer.repeat(reverse: true);

    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);

    _colorTween =
        _timer.drive(ColorTween(begin: Colors.yellow, end: Colors.blue));
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.dispose();
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
          'Handwash',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              height: 500,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    child: FutureBuilder(
                      future: _initializeVideoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return ClipRRect(
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: SizedBox(
                                width: _controller.value.size?.width ?? 0,
                                height: _controller.value.size?.height ?? 0,
                                child: Stack(
                                  children: [
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
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 30,
                child: VideoProgressIndicator(
                  _controller,
                  allowScrubbing: true,
                  colors: VideoProgressColors(
                      backgroundColor: Colors.white,
                      bufferedColor: Colors.white,
                      playedColor: const Color(0xFF94E1D4)),
                )),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("NEXT"),
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(Color(0xFFA3EDD7)),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}
