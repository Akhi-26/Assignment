import 'package:demo/UI/hotelcards.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Hotelbooking(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Hotelbooking extends StatelessWidget {
  var img=["https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1631049035182-249067d7618e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdGVsJTIwcm9vbXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1595576508898-0ad5c879a061?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aG90ZWwlMjByb29tc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1621293954908-907159247fc8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGhvdGVsJTIwcm9vbXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"];
  var txt = ["Grand Hyatt", "Hotel Marriot", "HolyDayln", "Crown Plaza"];
  var des = [
    "Five Star Hotel",
    "Five Star Hotel",
    "Five Star Hotel",
    "Five Star Hotel"
  ];
  var rate = ["\$130/night", "\$90/night", "\$95/night", "\$100/night"];

  @override
  Widget build(BuildContext context) {
    return Scaffold( bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, color: Colors.black),
            label: "Account")
      ],
    ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 200),
                            child: Text(
                              "Hello @khil",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Text(
                              "Find Your Favourite Hotel",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60"),
                                fit: BoxFit.fill)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search For Hotel",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 8, bottom: 8),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Popular Hotel",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [Card1(), Card2(), Card3(), Card4()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hotel Packages",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 350,
                child: GridView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 360,
                              decoration:
                                  BoxDecoration(color: Colors.blue[100]),
                              child: Row(
                                children: [
                                  Image(
                                      fit: BoxFit.fill,
                                      width: 150,
                                      height: 180,
                                      image: NetworkImage(
                                          img[index])),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 25),
                                    child: Column(
                                      children: [
                                        Text(
                                          txt[index],
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, left: 8),
                                          child: Text(
                                            des[index],
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            rate[index],
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(Icons.car_repair),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(Icons.restaurant_rounded),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(Icons.wifi),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(left: 295,top:2,
                              child: ElevatedButton(onPressed: (){}, child: Text("Book")))
                        ],
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, mainAxisExtent: 160),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
