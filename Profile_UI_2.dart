import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Profile_2(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          ),
    ),
  );
}

class Profile_2 extends StatelessWidget {
  var img = [
    "https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-circle-512.png",
    "https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/twitter_circle-512.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LinkedIn_icon_circle.svg/640px-LinkedIn_icon_circle.svg.png",
    "https://cdn3.iconfinder.com/data/icons/popular-services-brands/512/instagram-512.png"
  ];

  var icons = [
    Icons.lock,
    Icons.settings,
    Icons.push_pin,
    Icons.quick_contacts_dialer_rounded,
    Icons.groups,
    Icons.mail_outline,
    Icons.logout
  ];

  var text = [
    "Privacy",
    "Settings",
    "Purchase History",
    "Help and Support",
    "Invite Friends",
    "Change Mail",
    "LogOut"
  ];

  var icon = [
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
        Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.arrow_back),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.filter_list_sharp),
              )
            ],
          ),
        ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 80),
    child: Container(
    height: 160,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(300),
    child: Image.network(
    "https://1.bp.blogspot.com/-lG2AAP12oXY/XxGSlp9ANsI/AAAAAAAAdUo/Y8vsX-lzSBw5LlVUU3g-0PMU-kpUdG6kgCLcBGAsYHQ/s1600/Johnny-Depp%2B%25289%2529.jpg")),
    ),
    ),
    Row(mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(img.length, (index) => Padding(
    padding: const EdgeInsets.only(top: 25,left: 15,bottom: 25),
    child: SizedBox(
    width: 50,
    child: Image(
    image: NetworkImage(img[index]))),
    ))
    ),
    Text("Johnny Depp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
    Text("Hollywood Actor",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    Padding(
      padding: const EdgeInsets.only(top: 15,bottom: 15),
      child: Text("American actor and musician",style: TextStyle(fontSize: 20,color: Colors.grey),),
    ),
    Column(
      children: List.generate(icons.length, (index) => Container(
        width: 380,
        child: Card(
          color: Colors.grey.shade200,
          child: ListTile(
              leading: Icon(icons[index]),
              title: Text(text[index]),
              trailing: Icon(icon[index]),
            ),
          ),
      ),
      )),
    ]
    ,
    ),
      )
    ,
    );
  }
}
