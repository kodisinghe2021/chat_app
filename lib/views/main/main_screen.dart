import 'package:chat_app/utils/app_colours.dart';
import 'package:chat_app/views/main/chat/chat.dart';
import 'package:chat_app/views/main/home/home.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const pageKey = '/main-screen';
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   int _currentIndex = 0;
  final List<Widget> _screens = [
    const Home(),
    const Chat(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite,
        elevation: 0,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.amber,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 20,
            ),
            label: 'Chat',
            activeIcon: Icon(
              Icons.chat,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
  
}
