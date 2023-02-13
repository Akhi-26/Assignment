import 'package:demo/List_Seperator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class iphone extends StatelessWidget {
  var phone = <String>[
    'Iphone 14 Pro',
    'Iphone 13 Pro',
    'Iphone 12 Pro',
    'Iphone 11 Pro'
  ];
  var spec=<String>['Dynamic Island','Bionic A15','Face ID','Accelerometer'];
  var phoneimg = <String>[
    'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-pro-finish-unselect-gallery-2-202209?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1663790290203',
    'https://media.croma.com/image/upload/v1664009721/Croma%20Assets/Communication/Mobiles/Images/243507_0_mcftzn.png',
    'https://cdn.shopify.com/s/files/1/1684/4603/products/iphone-12-pro_Graphite_530x@2x.png?v=1652856493',
        'https://media.croma.com/image/upload/v1664602036/Croma%20Assets/Communication/Mobiles/Images/262640_6_xgy7zx.png'
  ];
  var price = <String>['1299', '1199', '1099', '999'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "IPHONE STORE",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount:phone.length,
          itemBuilder: (BuildContext, index){
        return SizedBox(
          height: 80,
          child:Card(
          color: Colors.purpleAccent,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(phoneimg[index])),
            title: Text(phone[index],textAlign: TextAlign.center,),
            subtitle: Text(spec[index],textAlign: TextAlign.center),
            trailing: Text("\$ ${price[index]}"),
            ),
          ),);
      }
      ),
    );
  }
}
