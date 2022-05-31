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

Widget message(String nama, String deskripsi, String waktu, IconData iconData,NetworkImage networkImage ){
  return Card(
    margin: EdgeInsets.only(bottom: 0.7),
    child: ListTile(
      leading: CircleAvatar(backgroundColor: networkImage, radius: 20,
      ),
      title: Text(
        nama,
      )
    )
  )
}
}
