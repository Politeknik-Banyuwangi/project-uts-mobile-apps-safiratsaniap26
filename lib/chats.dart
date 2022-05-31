import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

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

            // masukkan codingan disini
            message('Maritta Dwi', 'Okey fir', '10.19', Icons.done_all, Colors.blue, NetworkImage('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/08/31/3237294347.jpg')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget message(String nama, String deskripsi, String waktu, IconData iconData, Color iconColor, NetworkImage networkImage) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.7),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: networkImage,
          radius: 20,
        ),
        title: Text(
          nama,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(children: [
          Icon(iconData, size: 18, color: iconColor),
          SizedBox(width: 8),
          Text(
            deskripsi,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ]),
        trailing: Text(waktu),
      ),
    );
  }
}
