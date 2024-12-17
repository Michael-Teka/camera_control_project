// import 'package:adv_camera_control_app/loginPages/loginpage.dart';
// import 'package:adv_camera_control_app/reusableWidgets/reusable_widget.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';


// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _opacityAnimation;
//   late Animation<double> _scaleAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     );

//     _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeIn),
//     );

//     _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//     );

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         child: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(15),
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             decoration: boxDecoration(),
//             child: Center(
//               child: Column(
//                 children: [
//                   const SizedBox(height: 60),
//                   AnimatedBuilder(
//                     animation: _controller,
//                     builder: (context, child) {
//                       return Opacity(
//                         opacity: _opacityAnimation.value,
//                         child: Transform.scale(
//                           scale: _scaleAnimation.value,
//                           child: Image.asset(
//                             'assets/images/imge3.png',
//                             width: 250,
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                   const SizedBox(height: 15),
//                   AnimatedTextKit(
//                     animatedTexts: [
//                       TypewriterAnimatedText(
//                         'Welcome',
//                         textStyle: const TextStyle(
//                           fontFamily: 'F1',
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         speed: const Duration(milliseconds: 500 ),
//                       ),
//                     ],
//                     totalRepeatCount: 1,
//                   ),
//                   const SizedBox(height: 30),
//                   const Loginpage(),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:adv_camera_control_app/loginPages/loginpage.dart';
import 'package:adv_camera_control_app/reusableWidgets/reusable_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: boxDecoration(),
           child: Center(
             child: Column(
              children: [
                const SizedBox(height: 60),
                 AnimatedBuilder(
                  animation: _controller,
                   builder: (context, child) {
                     return Opacity(
                       opacity: _opacityAnimation.value,
                         child: Transform.scale(
                          scale: _scaleAnimation.value,
                          child: Image.asset(
                            'assets/images/imge3.png',
                            width: 250,
                          ),
                        ),
                     );
                    },
                  ),
                 const SizedBox(height: 15),
                  AnimatedTextKit(
                     animatedTexts: [
                        TypewriterAnimatedText(
                             'Welcome',
                              textStyle: const TextStyle(
                                fontFamily: 'F1',
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                             speed: const Duration(milliseconds: 500 ),
                             ),
                     ],
                    totalRepeatCount: 1,
                  ),
                 const SizedBox(height: 30),
                  const Loginpage(), // Removed the form and keeps the inner form
                 ],
             ),
          ),
        ),
      ),
    );
  }
}