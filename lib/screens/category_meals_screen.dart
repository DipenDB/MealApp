

import 'package:flutter/material.dart';
import 'package:mealapp2/components/meal_item.dart';
import 'package:mealapp2/data/MealsData.dart';
import 'package:mealapp2/modals/Meal.dart';

class CategoryMealsScreen extends StatelessWidget{

  final String categoryId;
  final String categoryTitle;
  CategoryMealsScreen({required this.categoryId, required this.categoryTitle});




  @override
  Widget build(BuildContext context) {

    final meals = DUMMY_MEALS.where((eachMeal){
      return eachMeal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: meals.length,

        itemBuilder: (context, index) {
          return MealItem(

            title: meals[index].title,
            imageUrl: meals[index].imageUrl,
            duration: meals[index].duration,
            // complexity: meals[index].complexity,

          );

        },

      ),
    );

  }
}
