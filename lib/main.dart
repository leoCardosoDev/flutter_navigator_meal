import 'dart:ui';

import 'package:flutter/material.dart';

import './screens/categories_meals_screen.dart';
import './screens/categories_screen.dart';
import './screens/meal_detail_screen.dart';
import './utils/routes/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
                headline1: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            )),
      ),
      routes: {
        AppRoutes.HOME: (_) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (_) => CategoriesMealScreen(),
        AppRoutes.MEAL_DETAIL: (_) => MealDetailScreen(),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (_) => CategoriesScreen()),
    );
  }
}
