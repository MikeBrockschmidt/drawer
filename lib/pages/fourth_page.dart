import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.pinkAccent,
      child: const Center(
        child: Text(
          "Das ist die Fourth Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
