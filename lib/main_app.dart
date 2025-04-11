import 'package:flutter/material.dart';
import 'package:widgets_vi/second_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecondScreen(),
    );
  }
}
