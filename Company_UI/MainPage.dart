import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:demo/Company_UI/SecondScreen.dart';
import 'package:demo/Company_UI/profile.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Com_main(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          ),
    ),
  );
}

class Com_main extends StatelessWidget {
  var txt = ["26", "15", "05", "86", "20", "45", "71"];
  var ord = [
    "order ID - 624587444",
    "order ID - 754127444",
    "order ID - 624586584",
    "order ID - 624310244",
    "order ID - 149849744",
    "order ID - 234589744",
    "order ID - 146578134"
  ];
  var date = [
    "date till\nDec 31,2022",
    "date till\nDec 31,2022",
    "date till\nDec 31,2022",
    "date till\nDec 31,2022",
    "date till\nDec 31,2022",
    "date till\nDec 31,2022",
    "date till\nDec 31,2022"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:  GNav(
          color: Colors.white,
          activeColor: Colors.black,
          tabBorderRadius: 40,
          backgroundColor: Colors.black26,
          selectedIndex: 2,
          tabs: [
            GButton(icon: Icons.home),
            GButton(icon: Icons.grid_view_rounded),
            GButton(icon: Icons.card_giftcard),
            GButton(icon: Icons.account_circle, onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (
                  context) => Com_prof()));
            },),
          ],

        ),
        body: Container(
          height: 800,
          width: 400,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1547623641-d2c56c03e2a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z3JhZGllbnQlMjBiYWNrZ3JvdW5kfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60"))),
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 12),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Com_scnd()));
                      },
                      child: Row(
                        children: const [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                          Text(
                            "Rewards Wallet",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    height: 160,
                    width: 380,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 14, top: 10, bottom: 6),
                              child: Container(
                                height: 75,
                                width: 190,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://images.unsplash.com/photo-1617957718614-8c23f060c2d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8b3JhbmdlJTIwZ3JhZGllbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60"),
                                        fit: BoxFit.fill)),
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Text(
                                        "Total Balance",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(left: 30),
                                            child: Text(
                                              "14,526",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 32),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2),
                                            child: Icon(
                                              Icons.currency_bitcoin,
                                              color: Colors.yellowAccent,
                                              size: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 14),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10)),
                                width: 180,
                                height: 60,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Redeemable \nPoints",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                "14,000",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.orange),
                                              ),
                                              Icon(
                                                Icons.currency_bitcoin,
                                                size: 18,
                                                color: Colors.yellow,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, top: 8, bottom: 8),
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Expired \nPoints",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Row(
                                            children: const [
                                              Padding(
                                                padding:
                                                EdgeInsets.only(left: 16),
                                                child: Text("4,320",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        color: Colors.orange)),
                                              ),
                                              Icon(
                                                Icons.currency_bitcoin,
                                                size: 18,
                                                color: Colors.yellow,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 4, top: 4, bottom: 4),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://media.istockphoto.com/id/1340030448/vector/gift-boxes-isolated-on-white-3d-white-gift-boxes-with-golden-ribbon-and-bow-birthday.jpg?s=612x612&w=0&k=20&c=cQLZmpTxWQFPV66WrbmmaMkTnelhdOQVRds-5xrn3Lg="),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.transparent,
                      height: 461,
                      width: 400,
                      child: ContainedTabBarView(
                        tabBarProperties: const TabBarProperties(
                            indicatorColor: Colors.black,
                            labelColor: Colors.deepOrange,
                            unselectedLabelColor: Colors.black),
                        tabs: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.card_giftcard),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rewards",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.file_copy_outlined),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Transactions",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          )
                        ],
                        views: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border:
                                            Border.all(color: Colors.black),
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        child: Center(
                                            child: Text(
                                              "All",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            )),
                                      ),
                                      Container(
                                        width: 120,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border:
                                            Border.all(color: Colors.black),
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        child: Center(
                                            child: Text(
                                              "Direct Rewards",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            )),
                                      ),
                                      Container(
                                        width: 120,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border:
                                            Border.all(color: Colors.black),
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        child: Center(
                                            child: Text(
                                              "Indirect Rewards",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                                ListView.builder(
                                  // physics: NeverScrollableScrollPhysics(),
                                    itemCount: txt.length,
                                    shrinkWrap: true,
                                    itemBuilder: (BuildContext, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Container(
                                          decoration:
                                          BoxDecoration(color: Colors.grey[500],
                                              borderRadius: BorderRadius
                                                  .circular(20)),
                                          child: ListTile(
                                            leading: Text(txt[index],
                                              style: TextStyle(fontSize: 25,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.orange[50]),),
                                            title: Text(ord[index],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),),
                                            trailing: Text(date[index],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),),
                                          ),
                                        ),
                                      );
                                    })
                              ],
                            ),
                          ),
                          Text("dfds")
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
