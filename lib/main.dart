import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/Screens/meals_category_screen.dart';
import 'package:foodie/Screens/meals_detail_screen.dart';
import 'package:foodie/Screens/tab_bar_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: const Color(0xff990011),
        fontFamily: 'Raleway',
      ),
      // home: const CategoryScreen(),
      // instead of home, we can use '/' in routes below will work the same or we can set intialRoute argument that is also fine.
      initialRoute: '/',
      routes: {
        '/': (context) => const TabBarScreen(),
        MealsCategoryScreen.routeName: (context) => const MealsCategoryScreen(),
        MealDetailScreen.routeName: (context) => const MealDetailScreen(),
      },
    );
  }
}
