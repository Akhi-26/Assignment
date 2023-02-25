import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Staggerred_UI(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class Staggerred_UI extends StatelessWidget {

  var nimage=["https://images.unsplash.com/photo-1530999811698-221aa9eb1739?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8NyUyMHdvbmRlcnMlMjBvZiUyMHRoZSUyMHdvcmxkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60",
  "https://images.unsplash.com/photo-1597659840241-37e2b9c2f55f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
  "https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmVzdGF1cmFudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
  "https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bW91bnQlMjBldmVyZXN0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60",
  "https://images.unsplash.com/photo-1619736163418-0826329731fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c2hpdHp1fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60"];
  var caxis=[2,2,2,2,2];
  List<double> heit=[180,250,170,270,180];
  var maxis=[3,4,3,4,3];
  var text=["Wonders Of World","Burj Khalifa","Restaurant","Mountains","Shitzu"];
  var subtle=["20 Jun 2013\nCarl sagan","19 Jun 2013\nErnest Hemingway","10 May 2013\nVincent Van Gogh","16 Apr 2013\nJ.K Rowling","25 Jul 2013\nRobert Frost"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered UI"),
      ),
      body: SingleChildScrollView(
          child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        children: List.generate(5, (index){
         return StaggeredGridTile.count(
              crossAxisCellCount: caxis[index],
              mainAxisCellCount: maxis[index],
              child: Card(
                child: Column(
                  children:  [
                    Image(
                      image: NetworkImage(nimage[index]),height: heit[index],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(text[index],
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 90,top: 20),
                      child: Text(subtle[index]),
                    )
                  ],
                ),
              )
          );
        })

      )),
    );
  }
}
