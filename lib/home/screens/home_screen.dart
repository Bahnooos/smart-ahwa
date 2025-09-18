import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager_app/home/data/home_lists.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedBottomNavIndex = 1;
  Widget? currentPage;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void onTappedItem(int index) =>
      setState(() => _selectedBottomNavIndex = index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedBottomNavIndex,
          children: bottomNavigationPages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItems.map((screen) => screen).toList(),
        onTap: onTappedItem,
        currentIndex: _selectedBottomNavIndex,
      ),
    );
  }
}

List<BottomNavigationBarItem> bottomNavigationBarItems = [
  BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
  BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
  BottomNavigationBarItem(icon: Icon(Icons.report), label: 'Report'),
];
