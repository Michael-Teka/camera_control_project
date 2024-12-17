import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:adv_camera_control_app/screens/home_screen.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _isExpanded = false;
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Wrap the entire thing with a scaffold
      body: Center( // Center the login UI
        child: GestureDetector(
          // Remove the onTap from the container, keep it on the parent outside
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(_isExpanded ? 30 : 10),
              color:
                   _isExpanded ? const Color.fromARGB(76, 72, 47, 1) : Colors.white,
            ),
            child: Form( // Wrap the login UI in a Form to use validation
               key: _formKey,
                  child: Column(
                
                mainAxisSize: MainAxisSize.min, // Makes sure the Column height fits its content
                children: [
                  const Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.black,
                    weight: 10,
                  ),
                 
                   TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null|| value.isEmpty || value.trim().isEmpty ) {
                        return 'Please enter your email';
                      }
                      // Validate it's an email
                      // A basic example validation not perfect validation
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',).hasMatch(value)) {
                         return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                      decoration: const InputDecoration(labelText: 'Password'),
                      obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty || value.trim().isEmpty ) {
                              return 'Please enter your password';
                          }

                            return null;
                          },
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                    child: const Row(
                      children: [
                        Text('Remember me'),
                        SizedBox(
                          width: 12,
                        ),
                      ],
                    ),
                  ),
                   if (_isLoading)
                   const CircularProgressIndicator()
                      // Lottie.asset(
                      //   'assets/images/loadingAnimation.json',
                      //   width: 100,
                      //   height: 100,
                      //   fit: BoxFit.cover,
                      // )
                    else
                    SizedBox(
                        width: 380,
                        height: 40,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color.fromARGB(255, 8, 5, 48),
                              ),
                              mouseCursor: const MaterialStatePropertyAll(
                                  SystemMouseCursors.click,
                              ),
                            ),
                            onPressed: () {
                             if(_formKey.currentState!.validate()){
                                    setState(() {
                                      _isLoading=true;
                                  });
                                  Future.delayed(const Duration(seconds: 2), () {
                                   setState(() {
                                      _isLoading = false;
                                  });
                                  // Navigation
                                   Navigator.pushReplacement(
                                    context,
                                     MaterialPageRoute(builder: (context) => const HomeScreen()),
                                   );

                                    _showSnackBar(context, "Succesfully Login");

                                  });
                            }
                            },

                            child: const Text(
                              "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                          ),
                            ),
                          ),
                      ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}