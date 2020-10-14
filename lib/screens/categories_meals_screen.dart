import 'package:flutter/material.dart';
import 'package:food_navigator/models/meal.dart';

import '../components/meal_item.dart';
import '../models/category.dart';

class CategoriesMealScreen extends StatelessWidget {
  final List<Meal> meals;
  CategoriesMealScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    final categoryMeals =
        meals.where((meal) => meal.categories.contains(category.id)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
