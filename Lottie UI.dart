import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Lottie_UI(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Lottie_UI extends StatelessWidget {
  var rive = [
    "https://public.rive.app/community/runtime-files/3466-7249-3d-cube-demo.riv",
    "https://public.rive.app/community/runtime-files/3703-7734-fire-button.riv",
    "https://public.rive.app/community/runtime-files/3608-7545-doodle-walk.riv"
  ];
  var title = ["MEARN Stack", "Flutter Development", "Data Science"];
  var subtitle = ["More Info", "More Info", "More Info"];
  var info = ["Fee:", "Duration"];
  var subinfo = ["25000", "6Months"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1677177947814-03e7768d4e9d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),fit: BoxFit.fill)),
            child: Column(
              children: [Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("EXPIRIENCE",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
                Column(
                  children: List.generate(
                    rive.length,
                    (index) => ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: SizedBox(
                          height: 200,
                          width: 400,
                          child: Stack(
                            children: [
                              Card(
                                // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                                child: RiveAnimation.network(
                                  rive[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 10),
                                child: SingleChildScrollView(
                                  child: ExpansionTile(
                                    title: Text(
                                      title[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.white),
                                    ),
                                    subtitle: Text(
                                      subtitle[index],
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    children: List.generate(
                                        info.length,
                                        (index) => ListTile(
                                              title: Text(
                                                info[index],
                                                style:
                                                    TextStyle(color: Colors.white),
                                              ),
                                              subtitle: Text(subinfo[index],
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            )),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
