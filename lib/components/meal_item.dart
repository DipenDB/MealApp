

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mealapp2/modals/Meal.dart';
import 'package:mealapp2/screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget{

  final String title;
  final String imageUrl;
  final int duration;
  // final Complexity complexity;


  MealItem({required this.title, required this.imageUrl, required this.duration,
    // required this.complexity
  });

  // String get ComplexityTest{
  //   switch(complexity){
  //     case Complexity.Simple:
  //       return'Simple';
  //       break;
  //     case Complexity.Challenging:
  //       return'Challenging';
  //       break;
  //     case Complexity.Hard:
  //       return'Hard';
  //       break;
  //     default:
  //       return'Unknown';
  //   }
  // }




  @override
  Widget build(BuildContext context) {


    // final meal = DUMMY_MEALS.where((eachMeal){
    //   return eachMeal.id.contains(mealId);
    // }).toList();




    return InkWell(
      onTap: () =>  Get.to(MealDetailScreen(title: title, imageUrl: imageUrl, price: duration)),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),


        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(imageUrl, height: 250,width: double.infinity,fit: BoxFit.cover,)
                ),

                Positioned(
                  bottom: 25,
                    right: 10,
                    child: Container(
                      color: Colors.black54,
                      width: 200,
                      child: Text(title,
                        style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold) ,
                        //----------------------------------
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      //  -----------------------------------
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                      Row(
                        children: [
                          Icon(Icons.schedule),
                          SizedBox(width: 6,),
                          Text(duration.toString()),
                          Text('min')
                        ],
                      ),

                      // Row(
                      //   children: [
                      //     Icon(Icons.work),
                      //     SizedBox(width: 6,),
                      //     Text(ComplexityTest),
                      //   ],
                      // ),
                    ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}
