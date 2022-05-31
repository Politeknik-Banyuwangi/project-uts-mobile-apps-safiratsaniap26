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
            tlephone('maritta', Icons.call_missed, Colors.red, 'mei 20, 14:54', NetworkImage('https://lzd-img-global.slatic.net/g/p/24d8f239fab8b5880bd7b8434fe1c4f3.jpg_720x720q80.jpg_.webp')),
            tlephone('maritta', Icons.call_made, Colors.red, 'mei 20, 14:54', NetworkImage('https://lzd-img-global.slatic.net/g/p/24d8f239fab8b5880bd7b8434fe1c4f3.jpg_720x720q80.jpg_.webp')),
            tlephone('maritta', Icons.call_received, Colors.red, 'mei 20, 14:54', NetworkImage('https://lzd-img-global.slatic.net/g/p/24d8f239fab8b5880bd7b8434fe1c4f3.jpg_720x720q80.jpg_.webp')),
            tlephone('maritta', Icons.call_made, Colors.red, 'mei 20, 14:54', NetworkImage('https://lzd-img-global.slatic.net/g/p/24d8f239fab8b5880bd7b8434fe1c4f3.jpg_720x720q80.jpg_.webp')),
            tlephone('maritta', Icons.call_made, Colors.red, 'mei 20, 14:54', NetworkImage('https://lzd-img-global.slatic.net/g/p/24d8f239fab8b5880bd7b8434fe1c4f3.jpg_720x720q80.jpg_.webp')),
            // Masukkan Coding disini jangan rubah lainnya
            //
            //
            //
            //
            //
            //
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
            height: 20,
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
      margin: EdgeInsets.only(bottom: 0.5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: networkImage,
          radius: 26,
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
              size: 20,
            ),
            SizedBox(width: 6),
            Text(
              Time,
              style: TextStyle(fontSize: 13),
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
