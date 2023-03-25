import 'dart:math';

import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Hotelhome(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Hotelhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Column(
                children: [Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.menu,color: Colors.white,),
                    Icon(Icons.favorite_border_sharp,color: Colors.white,)],
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      "Type Your Location",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 20, left: 15, right: 15, top: 5),
                    child: Container(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Bouddha,Kathmandu",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35))),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 6),
                          child: Icon(
                            Icons.hotel,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Hotel",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 6),
                          child: Icon(
                            Icons.restaurant_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Restaurant",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, right: 15),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 6),
                          child: Icon(
                            Icons.coffee,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Cafe",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          height: 250,
                          width: 380,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1631049307264-da0ec9d70304?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4,right: 100,left: 4),
                          child: Text(
                            "Awesome Room Near Bouddha",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2,bottom: 2,right: 210,left: 4),
                          child: Text("Boudhha, Kathmandu"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2,left: 4,bottom: 8),
                          child: Row(
                            children: [
                              RatingBar.readOnly(
                                filledIcon: Icons.star,
                                emptyIcon: Icons.star_border,
                                halfFilledIcon: Icons.star_half,
                                filledColor: Colors.yellow,
                                halfFilledColor: Colors.yellow,
                                initialRating: 5,
                                maxRating: 5,
                              ),Text("(220 Reviews)",style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(top: 15,left: 350,child: Icon(Icons.star_border,color: Colors.white,)),
                Positioned(left: 320,top: 210,
                  child: Container(height: 40,width: 50,decoration: BoxDecoration(color: Colors.white),
                    child: Center(child: Text("\$40")),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
