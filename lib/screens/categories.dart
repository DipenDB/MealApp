
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp2/components/category_item.dart';
import 'package:mealapp2/data/CategoryData.dart';

class Categories extends StatelessWidget{

  @override
  Widget build(BuildContext context) {


    // final data = DUMMY_CATEGORIES.map((data) => CategoryItem(
    //   id: data.id,
    //   title: data.title,
    //   color: data.color,
    // )).toList();

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DUMMY_CATEGORIES.length,


        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CategoryItem(id: DUMMY_CATEGORIES[index].id, title: DUMMY_CATEGORIES[index].title, color: DUMMY_CATEGORIES[index].color),
          );
        }
      );


    // return GridView(
    //
    //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //     maxCrossAxisExtent: 200,
    //     mainAxisSpacing: 15,
    //     crossAxisSpacing: 15,
    //     childAspectRatio: 3/2,
    //   ),
    //
    //   children: DUMMY_CATEGORIES.map((data) => CategoryItem(
    //     id: data.id,
    //     title: data.title,
    //     color: data.color,
    //   )).toList()
    //
    // );
  }

}