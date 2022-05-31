import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);
  // Masukkan coding disini
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),

            // masukkan codingan disini jangan rubah lainnya
            tlephone('Aditya Wiguna', Icons.call_received, Colors.green, '(2) kemarin 12.53', NetworkImage('https://cdn.kibrispdr.org/data/foto-bayangan-orang-23.jpg')),
            tlephone('Maritta Dwi', Icons.call_received, Colors.green, '23 Mei 12.21', NetworkImage('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/08/31/3237294347.jpg')),
            tlephone('Royyan Azis', Icons.call_made, Colors.green, '23 Mei 12.44', NetworkImage('https://lzd-img-global.slatic.net/g/p/24d8f239fab8b5880bd7b8434fe1c4f3.jpg_720x720q80.jpg_.webp')),
            tlephone('Kakak', Icons.call_received, Colors.red, '19 Mei 19.54', NetworkImage('https://trimelive.com/wp-content/uploads/2021/03/kaos-kaki.jpg')),
            tlephone('Kang Paket JNT', Icons.call_received, Colors.green, '19 Mei 10.19', NetworkImage('https://i.pinimg.com/originals/94/65/14/946514d6322a9a415926d522e2e014e6.jpg')),
            tlephone('Royan & 3 lainnya', Icons.call_received, Colors.green, '16 Mei 10.16', NetworkImage('https://lzd-img-global.slatic.net/g/p/24d8f239fab8b5880bd7b8434fe1c4f3.jpg_720x720q80.jpg_.webp')),
            tlephone('Kakak', Icons.call_received, Colors.green, '13 Mei 17.06', NetworkImage('https://trimelive.com/wp-content/uploads/2021/03/kaos-kaki.jpg')),
            tlephone('Mas Adi', Icons.call_received, Colors.red, '8 Mei 12.54', NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtWvSnPC7E5pOdtioSQw2-k1Rcvv0uKxRfFA&usqp=CAU')),
            tlephone('Mas Adi', Icons.call_received, Colors.green, '7 Mei 10.36', NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtWvSnPC7E5pOdtioSQw2-k1Rcvv0uKxRfFA&usqp=CAU')),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: () {},
            child: Icon(
              Icons.video_call,
              color: Colors.teal.shade900,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget tlephone(String name, IconData iconData, Color iconColor, String Time, NetworkImage networkImage) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: networkImage,
          radius: 30,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconData,
              color: iconColor,
              size: 24,
            ),
            SizedBox(width: 8),
            Text(
              Time,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        trailing: Icon(
          Icons.call,
          size: 28,
          color: Colors.teal,
        ),
      ),
    );
  }
}
