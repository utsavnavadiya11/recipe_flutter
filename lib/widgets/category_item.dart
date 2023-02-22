import 'package:flutter/material.dart';
import 'package:foodie/Screens/meals_category_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({
    super.key,
    required this.id,
    required this.title,
    required this.color,
  });

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(MealsCategoryScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: const Color(0xff990011),
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.5), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
