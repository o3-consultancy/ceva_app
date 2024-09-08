import 'package:ceva_app/components/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Select to know more information',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                    title: 'Egg Injector Vacinator',
                    route: '/egg_injector',
                    playVideo: false,
                    videoAsset: '',
                  ),
                  SizedBox(width: 30), // Add margin between buttons
                  CustomMenuButton(
                    title: 'ILS Machine',
                    route: '/ils_machine',
                    playVideo: false,
                    videoAsset: '',
                  ),
                  SizedBox(width: 30), // Add margin between buttons
                  CustomMenuButton(
                    title: 'IMVAC',
                    route: '/imvac',
                    playVideo: false,
                    videoAsset: '',
                  ),
                  SizedBox(width: 30), // Add margin between buttons
                  CustomMenuButton(
                    title: 'Laser Life Machine',
                    route: '/laser_life_machine',
                    playVideo: false,
                    videoAsset: '',
                  ),
                  SizedBox(width: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
