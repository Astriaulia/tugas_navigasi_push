import 'home_page.dart';
import 'profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      return; // Jika item yang sama di-tap, jangan lakukan apapun.
    }

    if (index == 1) {
      // Jika ingin navigasi push ke halaman Profile
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const ProfilePage()), // Navigasi ke halaman ProfilePage
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color selectedColor = Color.fromARGB(255, 105, 45, 235);
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        backgroundColor: Colors.white,
        selectedIconTheme: const IconThemeData(
          color: selectedColor,
        ),
        selectedLabelStyle: const TextStyle(
          color: selectedColor,
        ),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              width: 20,
              color: _selectedIndex == 0 ? selectedColor : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/user.png',
              width: 20,
              color: _selectedIndex == 1 ? selectedColor : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: selectedColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
