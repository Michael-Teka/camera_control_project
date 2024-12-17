import 'package:flutter/material.dart';

TextField reusableTextField(String text, IconData icon1, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    decoration: InputDecoration(
      labelText: text,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      prefixIcon: Icon(
        icon1,
        size: 18,
        color: Colors.black,
      ),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

TextFormField reusableTextFormField(String text, IconData icon1,
    bool isPasswordType, TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: text,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      prefixIcon: Icon(
        icon1,
        size: 18,
        color: Colors.black,
      ),
    ),
  );
}

TextField reusableTextField2(String text, IconData icon1, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: text,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      prefixIcon: Icon(
        icon1,
        size: 18,
        color: Colors.black,
      ),
    ),
  );
}

class ReusablePassTextField extends StatefulWidget {
  const ReusablePassTextField({super.key});

  @override
  State<ReusablePassTextField> createState() => _ReusablePassTextFieldState();
}

final _passwordcontroller = TextEditingController();
bool isPasswordType = true;

class _ReusablePassTextFieldState extends State<ReusablePassTextField> {
  void _loginForm() {
    if (_passwordcontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        // ignore: prefer_const_constructors
        SnackBar(
          content: const Text(
            'Please fill all fields correctly. Email must include @gmail.com',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          backgroundColor: Colors.black,
          duration: const Duration(seconds: 2),
          elevation: 10,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _passwordcontroller,
      obscureText: isPasswordType,
      decoration: InputDecoration(
          fillColor: Colors.grey,
          labelText: 'Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: const Icon(
            Icons.lock_outline,
            size: 18,
            color: Colors.black,
          ),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordType = !isPasswordType;
                });
              },
              icon: Icon(
                isPasswordType
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                size: 25,
                color: Colors.black,
              ))),
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    );
  }
}

BoxDecoration boxDecoration() {
  return const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
        Colors.white,
        Colors.white,
        Colors.grey,
      ]));
}

AppBar appBar(String text, IconButton icons) {
  return AppBar(
    leading: icons,
    title: Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'F2'),
    ),
    toolbarHeight: 70,
    backgroundColor: Colors.black,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0))),
  );
}
