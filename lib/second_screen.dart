import 'package:flutter/material.dart';
import 'package:widgets_vi/pages/home_page.dart';
import 'package:widgets_vi/pages/settings_page.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // State
  int _pageIndex = 0;

  List<Widget> pages = [
    HomePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2ter Screen"),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        selectedIndex: _pageIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Einstellungen",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Hallo Welt"),
            Expanded(child: pages[_pageIndex]),
          ],
        ),
      ),
    );
  }
}
