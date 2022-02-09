


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mealapp2/screens/home.dart';

void main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Meals Deal',

      theme: ThemeData(
        // primaryColor: Color.fromRGBO(255, 89, 89, 1),
        primarySwatch: Colors.pink,  //App theme color
        accentColor: Colors.blueAccent,  // secondary theme color for button
        // brightness: Brightness.dark,
        canvasColor: Color.fromRGBO(255, 254, 229, 1), //Body Color

        fontFamily: 'Ubuntu',

        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 52, 1),
                fontFamily: 'Lato'
            ),
            bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
                fontFamily: 'Lato'
            ),
            //For category,
            subtitle1: TextStyle(
              fontSize: 16,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
            ),

            //For App bar heading, defaut app bar size
            headline6: TextStyle(
              fontSize: 21,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
            )
        ),

      ),


      home: Home(),
    );
  }

}