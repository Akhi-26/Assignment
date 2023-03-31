import 'package:demo/Tourism/LastScreen.dart';
import 'package:demo/Tourism/SecondScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Tourism_UI(),
        routes: {
          "details":(context)=>LastScreen(),
        },
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Tourism_UI extends StatelessWidget {
  var txt = ["Login With Facebook", "Login With Telegram", "Login With Google"];
  var clr = [Colors.blueAccent.shade700, Colors.blue, Colors.red];
  var icon = [Icons.facebook, Icons.telegram, Icons.whatshot_rounded];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(color: Colors.black87),
            child: Column(
              children: [
                Image.network(
                    "https://cdn.dribbble.com/users/1149084/screenshots/7310552/traadly-logo-dribbble_4x.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(500)),
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ))),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => SecondScreen()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    "- Or -",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: txt.length,
                    itemBuilder: (BuildContext, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 20, left: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: clr[index]),
                          child: ListTile(
                            title: Text(
                              txt[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(icon[index]),
                          ),
                        ),
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "Not a user? Register here",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
