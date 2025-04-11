import 'package:flutter/material.dart';
import 'package:drawer/pages/first_page.dart';
import 'package:drawer/pages/second_page.dart';
import 'package:drawer/pages/third_page.dart';
import 'package:drawer/pages/fourth_page.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int _pageIndex = 0;
  final List<Widget> pages = [
    const FirstPage(),
    const SecondPage(),
    const ThirdPage(),
    const FourthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: const [
                  SizedBox(width: 15),
                  Text(
                    'famka',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 48,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(255, 51, 50, 50),
        backgroundColor: const Color(0xFFFFD301),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: _buildCircleIcon(Icons.calendar_today, _pageIndex == 0),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: _buildCircleIcon(Icons.info, _pageIndex == 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: _buildCircleIcon(Icons.settings, _pageIndex == 2),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: _buildCircleIcon(Icons.home, _pageIndex == 3),
            ),
            label: '',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IndexedStack(
          index: _pageIndex,
          children: pages,
        ),
      ),
    );
  }

  Widget _buildCircleIcon(IconData icon, bool isSelected) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:
              isSelected ? Colors.black : const Color.fromARGB(255, 51, 50, 50),
          width: 4,
        ),
      ),
      child: Icon(
        icon,
        color:
            isSelected ? Colors.black : const Color.fromARGB(255, 51, 50, 50),
      ),
    );
  }
}
