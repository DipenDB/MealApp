
import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
      ),
      body: Center(
        child: Text('Favourites', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
      ),
    );

  }

}