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
        home: Hotel_UI(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Hotel_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 330,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1506059612708-99d6c258160e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVscyUyMG5pZ2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 220,
                      left: 20,
                      child: Text(
                        "Grand Hyatt",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                        top: 250,
                        left: 20,
                        child: Text(
                          "Kochi,Kerala",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                              shadows: [Shadow(color: Colors.black)]),
                        )),
                    Positioned(
                      top: 280,
                      left: 15,
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                        child: Center(
                            child: Text(
                          "8.5/10 reviews",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                    ),
                    Positioned(
                      child: Icon(
                        Icons.favorite_border_sharp,
                        color: Colors.white,
                      ),
                      top: 290,
                      right: 20,
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            RatingBar.readOnly(
                              filledIcon: Icons.star,
                              emptyIcon: Icons.star_border,
                              halfFilledIcon: Icons.star_half,
                              initialRating: 4.5,
                              maxRating: 5,
                              filledColor: Colors.blue.shade400,
                              halfFilledColor: Colors.blue.shade400,
                              emptyColor: Colors.blue.shade400,
                              size: 25,
                              isHalfAllowed: true,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "17km to Lulu Mall",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Column(
                        children: [
                          Text(
                            "\$ 100",
                            style: TextStyle(
                                color: Colors.blue.shade400,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "/per night",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Book Now"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 270),
                child: Text(
                  "Grand Hyatt",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Grand Hyatt hotels are a luxurious and upscale hotel chain operated by Hyatt Hotels Corporation. With locations in major cities across the globe, Grand Hyatt hotels offer a premium hospitality experience for discerning travelers.\nGuests can expect top-notch amenities, such as world-class restaurants, opulent spas, state-of-the-art fitness centers, and spacious and elegantly designed guest rooms. The hotels also offer ample event spaces for weddings, business meetings, and other gatherings.\nWhether for business or leisure, the Grand Hyatt hotel chain provides an exceptional stay experience for guests seeking refined luxury and exceptional service. The Grand Hyatt hotels are designed to cater to the needs of the discerning and sophisticated traveler.",
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),label:"Search"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")]),
      ),
    );
  }
}
