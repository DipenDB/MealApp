
import 'package:flutter/material.dart';
import 'package:mealapp2/screens/categories.dart';
import 'package:mealapp2/screens/popular_meals.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Meals Deal'),
        actions: [
          Icon(Icons.add_alert_rounded),
          SizedBox(width: 10,),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                // height: 120,
                width: double.infinity,
                // color: Colors.pinkAccent,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 0,top: 10,bottom: 10),

                  child: Categories(),

                  // PopularMeals(),


                ),

              ),
              Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      bottom: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Popular Meals', style: Theme.of(context).textTheme.headline6,),
                      ],
                    ),
                  ),
                  Container(
                      height:MediaQuery.of(context).size.height*0.7,
                      child: PopularMeals()
                  ),
                ],
              ),

            ],
          ),
        ],
      ),

    );

  }

}