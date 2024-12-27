import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignOutPage extends StatelessWidget {
  const SignOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Out"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Are you sure you want to sign out?",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to sign out the user
                // For example, you might clear user data or tokens here

                // Show a toast message
                Fluttertoast.showToast(
                  msg: "You have signed out successfully.",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );

                // Navigate back to the login page or home page
                Navigator.pushReplacementNamed(context, '/login'); // Adjust the route as needed
              },
              child: const Text("Sign Out"),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Logic to cancel sign out and go back
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
          ],
        ),
      ),
    );
  }
}