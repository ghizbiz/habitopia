import 'package:flutter/material.dart';
 
class MyTextButton extends StatelessWidget {
  final String myButtonLabel;
  final VoidCallback myOnPressedFct;

  const MyTextButton({
    super.key,
    required this.myButtonLabel,
    required this.myOnPressedFct,
  });
 
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: myOnPressedFct,
      child: Text(
        myButtonLabel,
        style: const TextStyle(),
      ),
    );
  }
}
 
// MyButton class
class MyButton extends StatelessWidget {
  final String myButtonLabel;
  final VoidCallback myOnPressedFct;
 
  const MyButton({
    super.key,
    required this.myButtonLabel,
    required this.myOnPressedFct, required String butLabel,
  });
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
        onPressed: myOnPressedFct,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          side: const BorderSide(
            color: Colors.blue,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text(myButtonLabel),
      ),
    );
  }
}
 