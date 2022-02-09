
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Settings'),
        actions: [
          Icon(Icons.add_alert_rounded),
          SizedBox(width: 10,),
        ],

      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          
          Container(

            height: 160,
            // color: Colors.blue,

            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: Color(0xffFDCF09),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://static.toiimg.com/photo/83890830/83890830.jpg?v=3'),
                    ),
                  ),
                  Text('Dipen DB', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('98499XXX  | madaradipen@gmail.com', style: TextStyle(fontSize: 14),)
                ],
              )
            ),
          ),
          SizedBox(height: 20,),

          Card(
            elevation: 4,
            child: Container(
              height: 180,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ACCOUNT', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.account_circle_rounded),
                        SizedBox(width: 14,),
                        Text('Profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Container(
                        color: Colors.black12,
                        height: 2,
                      ),
                    ),

                    Row(
                      children: [
                        Icon(Icons.star_outlined),
                        SizedBox(width: 14,),
                        Text('Saved Address', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Container(
                        color: Colors.black12,
                        height: 2,
                      ),
                    ),

                    Row(
                      children: [
                        Icon(Icons.notifications_active),
                        SizedBox(width: 14,),
                        Text('Notification', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      ],
                    ),
                  ],
                ),
              ),

            ),
          ),

          Card(
            elevation: 4,
            child: Container(
              height: 140,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('OFFERS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.insert_emoticon),
                        SizedBox(width: 14,),
                        Text('Promos', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Container(
                        color: Colors.black12,
                        height: 2,
                      ),
                    ),

                    Row(
                      children: [
                        Icon(Icons.local_offer_outlined),
                        SizedBox(width: 14,),
                        Text('Get Discounts', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      ],
                    ),


                  ],
                ),
              ),

            ),
          ),

          Card(
            elevation: 4,
            child: Container(
              height: 90,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SETTINGS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.settings_rounded),
                        SizedBox(width: 14,),
                        Text('Theme', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      ],
                    ),



                  ],
                ),
              ),

            ),
          ),



        ],
      ),
    );

  }

}