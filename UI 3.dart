import 'package:demo/main.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Grid_UI(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class Grid_UI extends StatelessWidget {
  var keler = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.redAccent,
    Colors.red,
    Colors.indigoAccent,
    Colors.pinkAccent,
    Colors.teal,
    Colors.yellow,
    Colors.deepOrange,
    Colors.pink,
    Colors.lightGreen
  ];
  var eicon = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.camera,
    FontAwesomeIcons.ticket,
    FontAwesomeIcons.signal,
    FontAwesomeIcons.bookmark,
    FontAwesomeIcons.phone,
    FontAwesomeIcons.message,
    FontAwesomeIcons.map,
    FontAwesomeIcons.microchip,
    FontAwesomeIcons.microphoneSlash,
    FontAwesomeIcons.fileCirclePlus
  ];
  var text = [
    "Heart \n Shaker",
    "Heart \n Shaker",
    "Heart \n Shaker",
    "Heart \n Shaker",
    "Heart \n Shaker",
    "Heart \n Shaker",
    "Heart \n Shaker",
    "Heart \n Shaker",
    "Heart \n Shaker",
    "Heart \n Shaker",
    "Heart \n Shaker",
    "Heart \n Shaker"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("New UI")),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 100),
          itemCount: 12,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(1,1)
                  )
                ],borderRadius: BorderRadius.circular(10),color: keler[index]),
                child: Center(
                  child: ListTile(
                    title: Text(text[index]),
                    leading: FaIcon(eicon[index]),
                  ),
                ),
                /*padding: EdgeInsets.all(50),*/
                // child: Card(
                //   shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                //   color: keler[index],
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [FaIcon(eicon[index]),Text(text[index])],
                //   ),
                // ),
              ),
            );
          }),
    );
  }
}
