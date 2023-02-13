import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Stack_UI(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class Stack_UI extends StatelessWidget {
  var text = ["USA", "ENGLAND", "FRANCE", "RUSSIA", "CANADA","INDIA","CHINA","THAILAND"];
  var img = [
    "https://images.pexels.com/photos/208745/pexels-photo-208745.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1427579/pexels-photo-1427579.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://media.istockphoto.com/id/877496736/photo/aerial-panoramic-cityscape-view-of-paris-france.jpg?b=1&s=170667a&w=0&k=20&c=o8D169cYb-FHi3G23z0PdyuVIOdCQnUYzn9s8h9-nAs=",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Moscow_%2852078730783%29.jpg/300px-Moscow_%2852078730783%29.jpg",
    "https://images.pexels.com/photos/2773578/pexels-photo-2773578.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/789750/pexels-photo-789750.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/19872/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3393546/pexels-photo-3393546.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Stack UI")),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 8,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(img[index]),
                          fit: BoxFit.fill
                        )),
                  ),
                ),
                Positioned(
                    left: 10,
                    top: 150,
                    child: Text(
                      text[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    )),
              ],
            );
          }),
    );
  }
}
