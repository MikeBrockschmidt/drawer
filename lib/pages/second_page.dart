import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orange,
      child: const Center(
        child: Text("Das ist die Einstellungsseite"),
      ),
    );
  }
}
