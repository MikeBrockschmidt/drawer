import 'package:flutter/material.dart';
import 'package:widgets_vi/pages/home_page.dart';
import 'package:widgets_vi/pages/settings_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // State
  int pageIndex = 0;

  List<Widget> pages = [
    HomePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer")),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Column(
                  children: [
                    Text("david@gmail.com"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                  Divider(
                    height: 64,
                  ),
                  ListTile(
                    onTap: () {
                      print("Logout wurde geklickt!");
                    },
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          spacing: 32,
          children: [
            Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
            Expanded(child: pages[pageIndex]),
            // Expanded(child: getPage()), // Alternative zur Liste
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }

  // Alternative zur Liste
  // Widget getPage() {
  //   if (pageIndex == 0) {
  //     return HomePage();
  //   } else if (pageIndex == 1) {
  //     return SettingsPage();
  //   } else {
  //     return Text("Alles andere");
  //   }
  // }
}
