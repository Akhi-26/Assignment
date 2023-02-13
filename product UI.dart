import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Products(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      )));
}
class Products extends StatelessWidget {
  var prodimg = <String>[
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Arkansas_Black_apples_%28cropped%29.jpg/225px-Arkansas_Black_apples_%28cropped%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/f/fb/Carabao_mangoes_%28Philippines%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Banana_Fruit.JPG/1280px-Banana_Fruit.JPG"
  ];

  var details = <String>["APPLE", "MANGO", "BANANA"];
  var unit = <String>["Kg", 'Doz', 'Doz'];
  var price = <String>['20', '30', '10'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PRODUCT LIST"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(List.generate(3, (index) {
        return Card(
          color: Colors.grey,
          child: ListTile(
              leading: Image(image: NetworkImage(prodimg[index])),
              // subtitle: Text(
              //     'Name: ${details[index]}\nUnit: ${unit[index]}\nPrice: \$ ${price[index]}'),
              subtitle: RichText(
                text: TextSpan(
                  text: "Name :",children: [
                    TextSpan(
                      text: details[index],style: const TextStyle(fontWeight: FontWeight.bold)
                    ),
                TextSpan(
                  text: '\n Unit :',children: [
                    TextSpan(
                      text: unit[index],style: const TextStyle(fontWeight: FontWeight.bold)
                    ),
                  TextSpan(
                    text: '\n Price : ',children: [
                      TextSpan(
                        text: '\$ ${price[index]}',style: const TextStyle(fontWeight: FontWeight.bold)
                      ),
                  ]
                  )
                ]
                )
                ]),
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text("Add To Cart"),
              )),
        );
      }))),
    );
  }
}
