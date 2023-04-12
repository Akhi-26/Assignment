import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Bank_UI(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Bank_UI extends StatelessWidget {
  var title = ["CWF/18555", "LKM/18483", "JHD/18662", "KSD/32478"];
  var subtl = ["10-6-2022", "4-6-2022", "25-5-2022", "23-5-2022"];
  var amnt = ["\$ 200.00", "\$ 5000.00", "\$ 420.00", "\$ 18.00"];
  var icon = [
    Icons.mobile_screen_share,
    Icons.account_circle_outlined,
    Icons.lightbulb_outline,
    Icons.credit_card_rounded,
    Icons.home_outlined,
    Icons.qr_code_scanner
  ];
  var txt = [
    "Recharge",
    "My Account",
    "Electricity Bill",
    "Credit Card ",
    "Rent ",
    "Scan & Pay"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 243, 226, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 243, 226, 1),
        leading: Icon(Icons.menu, color: Color.fromRGBO(84, 3, 117, 1)),
        title: Text(
          "Fi Money",
          style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 20,
              color: Color.fromRGBO(84, 3, 117, 1)),
        ),
        actions: [
          SizedBox(
              width: 50,
              child: Icon(Icons.qr_code_scanner,
                  color: Color.fromRGBO(84, 3, 117, 1)))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Card(
                child: Container(
                  width: 360,
                  color: Colors.purple[100],
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Fin Reserve Bank",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(84, 3, 117, 1),
                                          fontWeight: FontWeight.w600),
                                    ))),
                            Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Ac No : 2484512560",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(84, 3, 117, 1),
                                          fontWeight: FontWeight.w600),
                                    ))),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Bal : \$14,000.00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromRGBO(84, 3, 117, 1),
                                        fontWeight: FontWeight.w600),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 8, left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "WOULD YOU LIKE TO ?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(84, 3, 117, 1),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (BuildContext, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 6, right: 6, top: 14),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple[100]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Icon(
                              icon[index],
                              size: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 6, right: 6),
                            child: Text(
                              txt[index],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "LAST TRANSACTIONS",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(84, 3, 117, 1),
                  ),
                )),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: title.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.purple[100]),
                      child: ListTile(
                        title: Text(title[index],style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text(subtl[index],style: TextStyle(fontWeight: FontWeight.bold),),
                        trailing: Text(amnt[index],style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
