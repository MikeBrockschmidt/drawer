import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.lightGreenAccent,
      child: const Center(
        child: Text(
          "Das ist die Third Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
