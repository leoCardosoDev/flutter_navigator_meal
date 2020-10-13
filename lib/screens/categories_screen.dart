import 'package:flutter/material.dart';

import '../components/category_item.dart';
import '../data/dumy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos cozinhar?'),
        centerTitle: true,
      ),
      body: GridView(
        padding: EdgeInsets.all(14),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
        ),
        children:
            DUMMY_CATEGORIES.map((category) => CategoryItem(category)).toList(),
      ),
    );
  }
}
