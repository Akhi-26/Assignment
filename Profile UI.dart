import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Profile_UI(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class Profile_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("PROFILE"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue.shade100,
          ),
          Container(
            child: const Image(
              image: NetworkImage(
                  "https://images.pexels.com/photos/924824/pexels-photo-924824.jpeg?auto=compress&cs=tinysrgb&w=400"),
            ),
          ),
          Positioned(
            top: 190,
            right: 140,
            child: CircleAvatar(
              radius: 62,
              backgroundColor: Colors.blue.shade100,
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=400"),
              ),
            ),
          ),
          const Positioned(
              top: 230,
              right: 10,
              child: CircleAvatar(
                radius: 30,
                child: Icon(Icons.add),
              )),
          const Positioned(
              top: 230,
              left: 10,
              child: CircleAvatar(
                child: Icon(Icons.message),
                radius: 30,
              )),
          const Positioned(
            top: 320,
            right: 130,
            child: Text(
              "John Kean",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const Positioned(
            top: 360,
            right: 160,
            child: Text(
              "Model/Actor",
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
