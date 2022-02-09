

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mealapp2/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget{

  final String id;
  final String title;
  final Color color;

  CategoryItem({required this.id,required this.title,required this.color});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(CategoryMealsScreen(categoryId: id, categoryTitle: title)),
      child: Container(
        width: 100,
        child: Text(title,style:Theme.of(context).textTheme.subtitle1,),
        // child: Text(title),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7),color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20)
        ),

      ),
    );
  }

}