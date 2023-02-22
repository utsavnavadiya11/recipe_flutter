import 'package:flutter/material.dart';
import 'package:foodie/dummy_data.dart';
import 'package:foodie/widgets/meals_item.dart';

class MealsCategoryScreen extends StatelessWidget {
  static const routeName = 'meals-category-screen';

  const MealsCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final ctgTitle = routeArgs['title'];
    final ctgId = routeArgs['id'];
    final meals =
        dummyMeals.where((meal) => meal.categories.contains(ctgId)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(ctgTitle!),
        backgroundColor: const Color(0xff990011),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return MealsItem(
              id: meals[index].id,
              title: meals[index].title,
              imageUrl: meals[index].imageUrl,
              duration: meals[index].duration,
              complexity: meals[index].complexity,
              affordability: meals[index].affordability);
        },
        itemCount: meals.length,
      ),
    );
  }
}
