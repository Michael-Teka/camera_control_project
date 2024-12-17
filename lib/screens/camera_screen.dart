// camera_setup_screen.dart
import 'package:adv_camera_control_app/reusableWidgets/reusable_widget.dart';
import 'package:flutter/material.dart';

class CameraSetupScreen extends StatelessWidget {
  const CameraSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        'Create Camera',
        IconButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        // child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff333333),
                  borderRadius: BorderRadius.circular(8)),
            ),
            const SizedBox(height: 20),
            const Text("Camera Name :"),
            const SizedBox(height: 5),
            SizedBox(
              height: 35,
              child: TextField(),
            ),
            const SizedBox(height: 20),
            const Text("SN :"),
            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 35,
                    child: TextField(),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.info_outline, color: Colors.red),
                )
              ],
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff333333)),
                  child: const Text(
                    "Create",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
    // );
  }
}
