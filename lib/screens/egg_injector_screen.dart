import 'package:ceva_app/components/custom_button.dart';
import 'package:flutter/material.dart';

class EggInjectorScreen extends StatelessWidget {
  const EggInjectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Select to know more information',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      'assets/images/logo.png', // Ensure your logo image is added to the assets folder
                      height: 50,
                    ),
                  ],
                ),
                Divider(
                  color: Colors.blue[900],
                  thickness: 2,
                  height: 20,
                ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 30),
                      CustomMenuButton(
                        title: 'Dual Pressure Injection System-BR',
                        route: '',
                        playVideo: true,
                        videoAsset: 'assets/videos/ovo-vaccine-BR.mp4',
                      ),
                      SizedBox(width: 30), // Add margin between buttons
                      CustomMenuButton(
                        title: 'Dual Pressure Injection System-EN',
                        route: '',
                        playVideo: true,
                        videoAsset: 'assets/videos/egginject-EN.mp4',
                      ),
                      SizedBox(width: 30), // Add margin between buttons
                      CustomMenuButton(
                        title: 'OVO Vaccination Process-BR',
                        route: '/imvac',
                        playVideo: true,
                        videoAsset: 'assets/videos/ovo-vaccine-BR.mp4',
                      ),
                      SizedBox(width: 30), // Add margin between buttons
                      CustomMenuButton(
                        title: 'OVO Vaccination Process-EN',
                        route: '/laser_life_machine',
                        playVideo: true,
                        videoAsset: 'assets/videos/ovo-vaccine-EN.mp4',
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.blue[900],
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
