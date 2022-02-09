

import 'package:flutter/material.dart';
import 'package:mealapp2/components/meal_item.dart';
import 'package:mealapp2/data/MealsData.dart';

class PopularMeals extends StatelessWidget{

  final popular = 'p1';



  @override
  Widget build(BuildContext context) {
    final popularMeals = DUMMY_MEALS.where((eachMeal){
      return eachMeal.categories.contains(popular);
    }).toList();

    print(popularMeals);

    return ListView.builder(
          // scrollDirection: Axis.vertical,
          itemCount: popularMeals.length,

            itemBuilder: (context, index) {
              return MealItem(
                  title: popularMeals[index].title,
                  imageUrl: popularMeals[index].imageUrl,
                  duration: popularMeals[index].duration,
              );
              // return Text('Hello');
            },
        );

  }

}
