import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoAsset;

  const VideoPlayerScreen({super.key, required this.videoAsset});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.videoAsset);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
    );
    _videoPlayerController.addListener(() {
      if (_videoPlayerController.value.hasError) {
        print("Video Error: ${_videoPlayerController.value.errorDescription}");
      }
    });
    _videoPlayerController.initialize().then((_) {
      setState(() {}); // Ensure the first frame is shown
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _videoPlayerController.value.isInitialized
                ? Chewie(
                    controller: _chewieController,
                  )
                : CircularProgressIndicator(),
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              backgroundColor: Colors.blue[900],
              onPressed: () {
                setState(() {
                  _videoPlayerController.value.isPlaying
                      ? _videoPlayerController.pause()
                      : _videoPlayerController.play();
                });
              },
              child: Icon(
                color: Colors.white,
                _videoPlayerController.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
