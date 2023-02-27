import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Drawer_Gradient(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class Drawer_Gradient extends StatelessWidget {
  var items = [
    "Dashboard",
    "Leads",
    "Clients",
    "Projects",
    "Patients",
    "Subscription",
    "Payments",
    "Users",
    "Library"
  ];
  var icons = [
    Icons.dashboard,
    Icons.leak_add_sharp,
    Icons.people_outline_outlined,
    Icons.rocket_launch_outlined,
    Icons.sports_handball,
    Icons.menu_open_rounded,
    Icons.payments,
    Icons.account_circle_outlined,
    Icons.local_library_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DRAWER",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(),
            child: Image(
                fit: BoxFit.fill,
                width: double.infinity,
                image: NetworkImage(
                    "data:image/jpeg;base64,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")),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 5),
            child: SizedBox(
              height: 30,
              width: 380,
              child: Text(
                "David Beckham",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 4, right: 4),
            child: Text(
              "David Beckham is a retired English professional footballer who played for several prestigious clubs, including Manchester United, Real Madrid, LA Galaxy, AC Milan, and Paris Saint-Germain. He is widely considered one of the greatest midfielders of his generation, renowned for his pinpoint crosses, free kicks, and stylish fashion sense. Beckham also played for the England national team, earning 115 caps and scoring 17 goals, and he captained the team on numerous occasions. Following his retirement from professional football, he has become a successful entrepreneur, fashion icon, and philanthropist, using his celebrity status to raise awareness and funds for various charitable causes.",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Colors.black38],
          )),
          child: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Beckswimbledon.jpg/330px-Beckswimbledon.jpg")),
                    title: Text(
                      "David Beckham",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("English Footballer"),
                  ),
                ),
              ),
              ListTile(),
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: icons.length,
                    itemBuilder: (BuildContext, index) {
                      return ListTile(
                        leading: Icon(icons[index]),
                        title: Text(items[index]),
                      );
                    }),
              ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
                        child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.black38),onPressed: () {}, child: Text("Logout")),
                      )
            ],
          ),
        ),
      ),
    );
  }
}
