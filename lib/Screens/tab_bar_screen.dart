import 'package:flutter/material.dart';
import 'package:foodie/Screens/category_screen.dart';
import 'package:foodie/Screens/favoruites_screen.dart';
import 'package:foodie/widgets/main_drawer.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  final List<Map<String, dynamic>> _pages = [
    {'page': const CategoryScreen(), 'title': 'Categories'},
    {'page': const FavoruiteScreen(), 'title': 'Favoruites'},
  ];

  int selectedIndex = 0;

  void selectPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: const Color(0xff990011),
        title: Text(_pages[selectedIndex]['title']),
      ),
      drawer: const MainDrawer(),
      body: _pages[selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: selectPage,
        backgroundColor: const Color(0xff990011),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoruites'),
        ],
      ),
    );
  }
}
