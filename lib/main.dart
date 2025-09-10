import 'package:flutter/material.dart';
import 'package:test_app/login_screen.dart';
import 'package:test_app/profile_page.dart';
import 'package:test_app/registration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationForm()
    );
  }
}