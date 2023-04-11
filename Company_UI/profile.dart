import 'package:demo/Company_UI/MainPage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Com_prof(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Com_prof extends StatelessWidget {
  var preicon = [
    Icons.wallet,
    Icons.branding_watermark_sharp,
    Icons.info,
    Icons.logout
  ];
  var txt = ["My Wallet", "Terms & Policies", "About", "Logout"];
  var suficon = [
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: GNav(
          color: Colors.white,
          activeColor: Colors.black,
          tabBorderRadius: 40,
          backgroundColor: Colors.black26,
          selectedIndex: 3,
          tabs: [
            GButton(icon: Icons.home),
            GButton(icon: Icons.grid_view_rounded),
            GButton(
              icon: Icons.card_giftcard,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Com_main()));
              },
            ),
            GButton(icon: Icons.account_circle),
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
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25)),
                        color: Colors.white30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Account",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                                  fit: BoxFit.fill),
                              border: Border.all(color: Colors.white, width: 5),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "David Peter",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.mail),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("davidpeter36@gmail.com"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone_android),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("+91 7215463589"),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1617957718614-8c23f060c2d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8b3JhbmdlJTIwZ3JhZGllbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60"),
                                    fit: BoxFit.fill)),
                            child: Center(
                              child:
                                  GestureDetector(child: Text("Edit Profile")),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 6, right: 6),
                    child: ListView.builder(
                        itemCount: txt.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.black)),
                              child: ListTile(
                                leading: Icon(preicon[index]),
                                title: Text(txt[index],style: TextStyle(fontSize: 17),),
                                trailing: Icon(suficon[index]),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
