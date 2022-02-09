
import 'package:flutter/material.dart';

class MealDetailScreen extends StatefulWidget{
  final String title;
  final String imageUrl;
  final int price;

  MealDetailScreen({
    required this.title,
    required this.imageUrl,
    required this.price,

  });

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {

  int count = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            Icon(Icons.favorite),
            SizedBox(width: 10,)
          ],
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [BoxShadow(blurRadius: 14, color: Colors.black.withOpacity(0.6), spreadRadius: 5)],
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 230.0,
                                ),
                              ),


                              // Material(
                              //   // borderRadius: BorderRadius.circular(250),
                              //   elevation: 2,
                              //   child: CircleAvatar(
                              //       radius: 230,
                              //       backgroundColor: Colors.blue,
                              //     ),
                              // ),



                              Positioned(
                                child: Container(
                                  height: 220,
                                  width: double.infinity,
                                  color: Colors.white,

                                  child: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 30,),
                                        Text(widget.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                        Text('Title of the food sbad asas saasd iahssa asiudhsa iusadhbdsa ',textAlign: TextAlign.center, style: TextStyle(fontSize: 16,overflow: TextOverflow.fade)),

                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ]

                        ),
                      ),


                      Positioned(
                        top: 100,
                        left: 50,
                        right: 50,

                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image.network(widget.imageUrl),
                        ),
                      ),


                    ],
                  ),
                ),
                Positioned(
                    bottom: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(width: 70,),

                        Container(
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey
                          ),
                          child: Center(
                            child: Text('S', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45, color: Colors.black54),),
                          ),
                        ),
                        SizedBox(width: 50,),

                        Container(
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey
                          ),
                          child: Center(
                            child: Text('M', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45, color: Colors.black54),),
                          ),
                        ),
                        SizedBox(width: 60,),

                        Container(
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey
                          ),
                          child: Center(
                            child: Text('L', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45, color: Colors.black54),),
                          ),
                        )

                      ],
                    )
                )
              ],
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextButton(
                  onPressed: (){
                    if(count==1 || count>1){
                      setState(()=>count++);
                    }
                  },
                  child: Text('+',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                ),


                Text(count.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.black26),),

                TextButton(
                  onPressed: (){
                    if(count>1){
                      setState(()=>count--);
                    }
                  },
                  child: Text('-',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                )

              ],
            ),

            SizedBox(height: 30,),

            Row(
              children: [
                Container(
                  height: 80,
                  // color: Colors.blue,
                  width: MediaQuery.of(context).size.width*0.6,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price', style: TextStyle(fontSize: 30),),
                        Text(widget.price.toString(),style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),

                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width*0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Row(
                    children: [

                      SizedBox(width: 15,),
                      Icon(Icons.shopping_cart_outlined,size: 25,color: Colors.white,),
                      Text('Go to cart',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),),

                    ],
                  ),
                )

              ],
            )

          ],
        )
    );

  }
}