import 'package:demo/Company_UI/Home_UI.dart';
import 'package:demo/Company_UI/MainPage.dart';
import 'package:flutter/material.dart';

class Com_scnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 800,
          width: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1547623641-d2c56c03e2a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z3JhZGllbnQlMjBiYWNrZ3JvdW5kfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60"))),
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 65,
                      left: 12,
                      bottom: 4,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Select Invoice Date",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Eg:July 26,2022",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top: 12, right: 4),
                              child: Wrap(
                                children: [
                                  Icon(Icons.calendar_today),
                                  Icon(Icons.keyboard_arrow_down_outlined)
                                ],
                              ),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 12,
                      bottom: 4,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter the Amount",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Eg:2000",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 430, left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 45,
                          width: 150,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey[50]),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => Com_home()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "Back",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ],
                              )),
                        ),
                        Container(
                          height: 45,
                          width: 150,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange[50]),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Com_main()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Submit",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: Colors.black,
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
