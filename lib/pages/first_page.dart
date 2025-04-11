import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.cyan,
      child: const Center(
        child: Text("Das ist die Startseite"),
      ),
    );
  }
}
