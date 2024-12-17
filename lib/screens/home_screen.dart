import 'package:adv_camera_control_app/screens/camera_screen.dart';
import 'package:adv_camera_control_app/screens/video_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of routes for each grid item
    final List<PageRouteBuilder> routes = [
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const CameraSetupScreen()),
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const VideoScreen()),
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const CameraSetupScreen()),
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const CameraSetupScreen()),
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const CameraSetupScreen()),
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const CameraSetupScreen()),
    ];


    // List of icons for each grid item
    final List<IconData> icons = [
      Icons.wifi,
      Icons.camera,
      Icons.photo_camera,
      Icons.video_call,
      Icons.motion_photos_on,
      Icons.camera_outdoor,
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10.0),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  Icon(Icons.dark_mode, color: Colors.black, size: 40),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                          'assets/images/profile.png'), // Replace with the actual image asset or network image
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                //child:
              ),
            ),

            // Grid layout for camera thumbnails
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  itemCount: 6, // Adjust based on your needs
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          routes[index],
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:  Center(
                          child: Icon(
                            icons[index], // Assign the icon depending of the index
                            color: Colors.white,
                            size: 100,
                          ), // Replace with thumbnails or live camera streams
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
