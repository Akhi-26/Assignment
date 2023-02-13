import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: cities(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      )));
}

class cities extends StatelessWidget {
  var place = <String>[
    'DELHI',
    'LONDON',
    'VANCOUVER',
    'NEW YORK'
  ];
  var country=<String>['INDIA \nPopulation:19 million','BRITAIN \nPopulation:8 million','CANADA \nPopulation:2.4 million','USA \nPopulation:8.1 million'];
  var placeimg = <String>[
    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/India_Gate_in_New_Delhi_03-2016.jpg/640px-India_Gate_in_New_Delhi_03-2016.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall_%28cropped%29.jpg/1000px-Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Concord_Pacific_Master_Plan_Area.jpg/1200px-Concord_Pacific_Master_Plan_Area.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Statue_of_Liberty%2C_NY.jpg/220px-Statue_of_Liberty%2C_NY.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CITIES AROUND THE WORLD",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
          itemCount:place.length,
          itemBuilder: (BuildContext, index){
            return SizedBox(
              height: 100,
              child:Card(
                color: Colors.white,
                child: ListTile(
                  isThreeLine: true,
                  leading: Image(image: NetworkImage(placeimg[index]),height: 100,width: 100,),
                  title: Text(place[index]),
                  subtitle: Text(country[index]),
                ),
              ),);
          }
      ),
    );
  }
}