import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Farmers_UI(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Farmers_UI extends StatelessWidget {
  var items = ["VEGETABLES", "FRUITS", "EXOTIC", "FRESH CUTS"];
  var carimg = [
    "assets/images/pexels-anna-tarazevich-5620899.jpg",
    "assets/images/pexels-mali-maeder-65174.jpg",
    "assets/images/pexels-pixabay-257794.jpg",
    "assets/images/pexels-pixabay-533342.jpg"
  ];
  var gridimg = [
    "assets/images/vegetables.jpg",
    "assets/images/fruits.jpg",
    "assets/images/exotic.jpg",
    "assets/images/fresh cuts.jpg",
    "assets/images/nutrition chargers.jpg",
    "assets/images/spices.jpg"
  ];
  var gridnames = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavors"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.green, items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: "HOME"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            label: "CART"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box_outlined,
              color: Colors.white,
            ),
            label: "ACCOUNT"),
      ]),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Colors.green,
            title: const Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            actions: const [
              Icon(Icons.location_on_outlined),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Kochi"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Icon(Icons.arrow_drop_down_outlined),
              )
            ],
            centerTitle: false,
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                height: 35,
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Search for Vegetables,Fruits...",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        items[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.green),
                      ),
                    ),
                  );
                }),
              ),
              CarouselSlider(
                  items: List.generate(
                      4,
                      (index) => Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(carimg[index]))),
                          )),
                  options: CarouselOptions(
                    height: 250,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(milliseconds: 1500),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.timer,
                              color: Colors.greenAccent,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text("30 MINS POLICY",
                                  style: TextStyle(fontSize: 13)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.mobile_screen_share,
                              color: Colors.lightBlueAccent,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "TRACEABILITY",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.waving_hand,
                              color: Colors.yellowAccent,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text("LOCAL SOURCING",
                                  style: TextStyle(fontSize: 13)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Shop By Category",style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1),
                child: GridView.count(

                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children:List.generate(
                    6,
                    (index) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Card(
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              child: Image(
                                image: AssetImage(gridimg[index]),fit: BoxFit.fill,
                              ),
                            ),
                            Container(child: Text(gridnames[index]))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
