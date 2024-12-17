// import 'package:adv_camera_control_app/loginPages/login_page.dart';
import 'package:adv_camera_control_app/loginPages/loginpage.dart';
// import 'package:adv_camera_control_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}
