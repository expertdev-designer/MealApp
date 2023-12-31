import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/data/dummy_data.dart';
import 'package:mealapp/screens/meals.dart';
import 'package:mealapp/widgets/category_grid_item.dart';
import 'package:mealapp/models/category.dart';

class CategoriesScreen extends StatelessWidget{
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context,Cat category){
    final filteredMeals =dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx)=> MealsScreen(
            title: category.title,
            meals: filteredMeals,
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('Pick your category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // availableCategories.map((category)=>CategoryGridItem(category:category)).toList()
          for (final category in availableCategories)
            CategoryGridItem(category: category,
              onSelectCategory: (){
                _selectCategory(context,category);
              },
            )
        ],
      ),
    );
  }

}