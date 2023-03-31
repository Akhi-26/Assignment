import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:demo/Tourism/datas.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataId = ModalRoute.of(context)?.settings.arguments;
    final data = tourism.firstWhere((element) => element["Id"] == dataId);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Align(alignment: Alignment.centerLeft,
                        child: Text(
                          "${data["place"]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 2, right: 40),
                        child: RatingBar.readOnly(
                          size: 20,
                          filledIcon: Icons.star,
                          emptyIcon: Icons.star_border,
                          maxRating: 5,
                          initialRating: 4,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 8, bottom: 8),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(data["image"]),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 8),
              child: Align(alignment: Alignment.centerLeft,
                child: Text(
                  "About Places",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${data["about"]}"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 8,left: 8),
              child: Align(alignment: Alignment.centerLeft,
                child: Text(
                  "Special Facilities",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(
                      children: [Icon(Icons.car_repair_rounded), Text("Parking")],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [Icon(Icons.support_agent), Text("24x7 Support")],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [Icon(Icons.wifi), Text("Free WiFi")],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: 360,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(data["image"]), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Explore Now"))
          ],
        ),
      ),
    );
  }
}
