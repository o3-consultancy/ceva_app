import 'package:ceva_app/screens/video_player.dart';
import 'package:flutter/material.dart';

class CustomMenuButton extends StatelessWidget {
  final String title;
  final String route;
  final bool playVideo;
  final String videoAsset;

  const CustomMenuButton(
      {super.key,
      required this.title,
      required this.route,
      required this.playVideo,
      required this.videoAsset});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1, // Maintain a square aspect ratio
        child: GestureDetector(
          onTap: () {
            if (playVideo) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      VideoPlayerScreen(videoAsset: videoAsset),
                ),
              );
            } else {
              Navigator.pushNamed(context, route);
            }
          },
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/button-bg.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, color: Colors.blue[900]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
