import 'package:flutter/material.dart';
import 'components/screens/sign_in.dart';
import 'components/screens/signup.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habitopia',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}