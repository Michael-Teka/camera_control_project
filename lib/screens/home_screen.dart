import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top notification and profile section
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
             
            // ),

            // Camera illustration slider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                 child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
             
                  const Icon(Icons.notifications, color: Colors.white, size: 30),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                        'assets/images/profile.png'), // Replace with the actual image asset or network image
                  ),
                   Center(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 50,
                  ), // Replace with an actual camera illustration
                ),
                ],
              ),
             
              ),
            ),

            const SizedBox(height: 10),

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
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.videocam_outlined,
                          color: Colors.white54,
                          size: 40,
                        ), // Replace with thumbnails or live camera streams
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
