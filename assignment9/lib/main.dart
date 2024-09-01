import 'package:assignment9/presentation/screen/home_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp()); // Wrap your app

}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeScreen(),
    );
  }
}
