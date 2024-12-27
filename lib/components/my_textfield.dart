import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String myHintText;
  final Icon myIcon;
  final TextEditingController myController;
  final bool isObscure;
  final String? Function(String?)? myValidator;

  const MyTextField({
    super.key,
    required this.myHintText,
    required this.myIcon,
    required this.myController,
    this.isObscure = false,
    this.myValidator, required String hinttext, required TextEditingController controller, required String hintText, required bool obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: myValidator,
      controller: myController,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: myHintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        border: const OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: myIcon,
      ),
    );
  }
}
