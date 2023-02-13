import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Grid_Ui(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class Grid_Ui extends StatelessWidget {
  var pimage = [
    "https://images.pexels.com/photos/2081199/pexels-photo-2081199.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c3VuZ2xhc3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1530404124886-4861adb62ac7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmVsdCUyMHByb2R1Y3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.pexels.com/photos/12026054/pexels-photo-12026054.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1413420/pexels-photo-1413420.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/251454/pexels-photo-251454.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ];

  var ptext = ["BagPack", "Sunglass", "Belt", "Chain", "Earrings", "Socks"];

  var prate = ["120.00", "58.00", "35.00", "98.00", "34.00", "12.00"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text("SHRINE"),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 60, child: Icon(Icons.filter_list_sharp))
        ],
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              6,
              (index) => Card(
                    child: Column(
                      children: [
                        Container(
                            height: 130,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(pimage[index])))),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    ptext[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                              Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "\$ ${prate[index]}",
                                    style:
                                        const TextStyle(fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))),
    );
  }
}
