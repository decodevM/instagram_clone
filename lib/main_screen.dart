import 'package:flutter/cupertino.dart';

import 'screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  void _selectIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0 ? CupertinoIcons.house_fill : CupertinoIcons.home),
            ),
            const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 2
                  ? CupertinoIcons.play_rectangle_fill
                  : CupertinoIcons.play_rectangle),
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 3 ? CupertinoIcons.bag_fill : CupertinoIcons.bag),
            ),
            const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
            ),
          ],
          onTap: _selectIndex,
          currentIndex: _selectedIndex,
          activeColor: CupertinoColors.black,
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return const HomeScreen();
            case 1:
              return const Center(child: Text('Search'));
            case 2:
              return const Center(child: Text('Reels'));
            case 3:
              return const Center(child: Text('MarketPlace'));
            case 4:
              return const Center(child: Text('Profile'));
            default:
              return const SizedBox.shrink();
          }
        });
  }
}
