import 'package:flutter/material.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';

import '../main.dart';

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

class _ChalHandwashScreenState extends State<ChalHandwashScreen> with SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;

  late Future<void> _initializeVideoPlayerFuture;

  get floatingActionButton => null;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(
      'https://cdn.pixabay.com/vimeo/413256778/-37274.mp4?width=1280&expiry=1679843292&hash=aabd825adbe46bc5b7ffc7691613e6dffcf4d326',
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);


  }

  @override
  void dispose() {
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
          'Handwash',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
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
                  builder:  (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return ClipRRect(
                          child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                    width: _controller.value.size?.width ?? 0,
                    height: _controller.value.size?.height ?? 0,
                          child: Stack( children: [ VideoPlayer(_controller), Center(
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
                                ))]),
                        ),
                      ));
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                )),
            ],
          ),
        ),
            Container(  height: 30,
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
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF94E1D4),
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/a');
                  },
                  child: Text('Next'),
                )),
          ])),
      backgroundColor: const Color(0xFFE5F7F1),
    );
  }
}
