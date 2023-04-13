
import 'package:demo/Tourism%202/datas.dart';
import 'package:flutter/material.dart';

class Detailed_Screen extends StatelessWidget {
  const Detailed_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataId = ModalRoute.of(context)?.settings.arguments;
    final place = tourist.firstWhere((element) => element["id"] == dataId);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(place["image"])))),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: SizedBox(
                  height: 40,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      place["place"],
                      style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                child: Text(
                  place["about"],
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: SizedBox(
                  height: 40,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Points of Interests",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    slider(img: NetworkImage(place["img1"])),
                    const SizedBox(width: 20),
                    slider(img: NetworkImage(place["img2"])),
                    const SizedBox(width: 20),
                    slider(img: NetworkImage(place["img3"])),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class slider extends StatelessWidget {
  final ImageProvider img;

  const slider({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(
        fit: BoxFit.fill,
        image: img,
        width: 150,
        height: 180,
      ),
    );
  }
}