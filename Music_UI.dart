import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Music_UI(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Music_UI extends StatelessWidget {
  var txt = [
    "Drive Mix",
    "Dance Mix",
    "Pop Music",
    "Melodies",
    "Tamil Hits",
    "Hindi Hits",
    "Malayalam Hits",
    "Today's Hits"
  ];
  var img = [
    "https://images.unsplash.com/photo-1491847352009-6db18bb24656?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGRyaXZlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1541904845547-0eaf866de232?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGRhbmNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1563891217861-7924b471afb3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cG9wfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1586853233601-8dc7c8bbf0e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG1lbG9keXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://i.scdn.co/image/ab67616d00001e022de0f4e56bbbe9f37294092f",
    "https://i.scdn.co/image/ab67616d0000b273bb73a0010d3d84273ec4ad85",
    "https://i.scdn.co/image/ab67616d0000b2735741b5ad37b57d61e106e106",
    "https://images.unsplash.com/photo-1504898770365-14faca6a7320?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text(
          "Musify",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.pinkAccent),
        ),
        actions: [
          SizedBox(width: 35,child: Icon(Icons.notifications)),
      SizedBox(width: 35,child:Icon(Icons.question_mark)),
      SizedBox(width: 35,child:Icon(Icons.settings))
        ],
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.featured_play_list,
                  color: Colors.white,
                ),
                label: "Playlist"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
                label: "More"),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: GridView.builder(
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  itemCount: txt.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 5, left: 5),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.pink),
                              child: Column(
                                children: [
                                  Image(
                                    height: 140,
                                    width: 220,
                                    image: NetworkImage(img[index]),
                                    fit: BoxFit.fitWidth,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 6, top: 10, left: 5),
                                    child: Text(
                                      txt[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                              // decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(15),
                              //     image: DecorationImage(
                              //         image: NetworkImage(img[index]),
                              //         fit: BoxFit.fill)),
                            ),
                          ),
                          // Image.network(img[index],fit: BoxFit.fill,width: 190,),

                          // Positioned(
                          //     top: 150,
                          //     left: 10,
                          //     child: Text(
                          //       txt[index],
                          //       style: TextStyle(
                          //           color: Colors.white,
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 25),
                          //     )),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
