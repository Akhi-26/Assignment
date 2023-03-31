import 'package:demo/Tourism/LastScreen.dart';
import 'package:demo/Tourism/datas.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Tourism_UIp2(),
//         useInheritedMediaQuery: true,
//         locale: DevicePreview.locale(context),
//         builder: DevicePreview.appBuilder,
//       ),
//     ),
//   );
// }

class SecondScreen extends StatelessWidget {
  var txt = [
    "Maachu Pichu",
    "Eiffel Tower",
    "Bora Bora",
    "Niagara Falls",
    "Taj Mahal",
    "Maldives"
  ];
  var place = [
    "https://images.unsplash.com/photo-1567597243073-2d274aabecec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bWFjaHUlMjBwaWNjaHV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1542654071-7ded22488685?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZWlmZmVsJTIwdG93ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1633381659744-d4804482b548?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJvcmElMjBib3JhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1579961376277-6ced6f0c4756?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG5pYWdhcmElMjBmYWxsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1585506942812-e72b29cef752?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dGFqJTIwbWFoYWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1578922746465-3a80a228f223?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFsZGl2ZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            // iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            title: Text(
              "traadly",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Solid_blue.svg/2500px-Solid_blue.svg.png"),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Stack(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 9, bottom: 4),
                    child: Container(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search...",
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Popular Places",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 800,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, mainAxisExtent: 300),
                      children: tourism
                          .map((data) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(data["image"]),
                                          fit: BoxFit.fill)),
                                  child: Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () =>
                                            gotolast(context, data["Id"]),
                                      ),
                                      Positioned(
                                        top: 250,
                                        left: 10,
                                        child: Text(
                                          data["place"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                          ))
                          .toList(),
                    ),
                  )
                  // GridView.builder(
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2, mainAxisExtent: 250),
                  //     itemCount: 6,
                  //     shrinkWrap: true,
                  //     itemBuilder: (context, index) {
                  //       return Stack(
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.all(3),
                  //             child: Container(
                  //               height: 250,
                  //               decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.circular(10),
                  //                   image: DecorationImage(
                  //                       image: NetworkImage(place[index]),
                  //                       fit: BoxFit.fill)),
                  //             ),
                  //           ),
                  //           Positioned(
                  //               left: 10,
                  //               top: 210,
                  //               child: Text(
                  //                 txt[index],
                  //                 style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                     fontSize: 25,
                  //                     color: Colors.white),
                  //               )),
                  //         ],
                  //       );
                  //     }),
                  ,
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigoAccent),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LastScreen()));
                        },
                        child: Text("Explore Now")),
                  )
                ],
              ),
            ]),
          )),
    );
  }

  void gotolast(BuildContext context, dataId) {
    Navigator.pushNamed(context, "details", arguments: dataId);
  }
}
