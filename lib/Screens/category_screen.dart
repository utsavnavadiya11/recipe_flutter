import 'package:flutter/material.dart';
import 'package:foodie/widgets/category_item.dart';

import '../dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCF6F5),
      body: GridView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200),
        children: categoryData
            .map(
              (ctg) => CategoryItem(
                id: ctg.id,
                title: ctg.title,
                color: ctg.color,
              ),
            )
            .toList(),
      ),
    );
  }
}
