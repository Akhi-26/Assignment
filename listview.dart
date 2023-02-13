import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.tealAccent,
       title: const Text("CONTACTS"),
       centerTitle: true,
     ),
     backgroundColor: Colors.blueGrey,
     body: ListView(
       children: [
         Card(
             color: Colors.white,
             child: ListTile(
               leading: const CircleAvatar(
                   backgroundImage: AssetImage("assets/images/profile.jpg")),
               title: const Text("Akhil"),
               subtitle: const Text("701254687"),
               trailing: Wrap(children: const [
                 Icon(Icons.phone),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.message),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.arrow_forward)
               ]),
             )),
         Card(
             color: Colors.white,
             child: ListTile(
               leading: const Icon(Icons.person),
               title: const Text("Kiran"),
               subtitle: const Text("8542254687"),
               trailing: Wrap(children: const [
                 Icon(Icons.phone),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.message),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.arrow_forward)
               ]),
             )),
         Card(
             color: Colors.white,
             child: ListTile(
               leading: const Icon(Icons.person),
               title: const Text("Yadhu"),
               subtitle: const Text("942254687"),
               trailing: Wrap(children: const [
                 Icon(Icons.phone),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.message),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.arrow_forward)
               ]),
             )),
         Card(
             color: Colors.white,
             child: ListTile(
               leading: const Icon(Icons.person),
               title: const Text("Amal"),
               subtitle: const Text("8542254687"),
               trailing: Wrap(children: const [
                 Icon(Icons.phone),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.message),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.arrow_forward)
               ]),
             )),
         Card(
             color: Colors.white,
             child: ListTile(
               leading: const Icon(Icons.person),
               title: const Text("Adarsh"),
               subtitle: const Text("84654687"),
               trailing: Wrap(children: const [
                 Icon(Icons.phone),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.message),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.arrow_forward)
               ]),
             )),
         Card(
             color: Colors.white,
             child: ListTile(
               leading: const Icon(Icons.person),
               title: const Text("Ebin"),
               subtitle: const Text("754254687"),
               trailing: Wrap(children: const [
                 Icon(Icons.phone),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.message),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.arrow_forward)
               ]),
             )),
         Card(
             color: Colors.white,
             child: ListTile(
               leading: const Icon(Icons.person),
               title: const Text("Lakshmi"),
               subtitle: const Text("957254687"),
               trailing: Wrap(children: const [
                 Icon(Icons.phone),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.message),
                 SizedBox(
                   width: 20,
                 ),
                 Icon(Icons.arrow_forward)
               ]),
             )),
       ],
     ),
   );
  }
  
}