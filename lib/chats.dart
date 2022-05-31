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
            message('Kelas TI-2D', 'Anda: iy rek', '11.40', Icons.done, Colors.grey, NetworkImage('https://cdn.popbela.com/content-images/post/20190519/img-242e1b2552582f651aee24c72e5e65e4_750x500.jpg')),
            message('Aditya Wiguna', 'Pcc', 'kemarin', Icons.done_all, Colors.blue, NetworkImage('https://cdn.kibrispdr.org/data/foto-bayangan-orang-23.jpg')),
            message('Khusus Info 2D-TI', 'Adelina: Selamat malam teman', 'kemarin', Icons.done, Colors.grey, NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0_npgzbcjH_BvhqLeniK1kz2WOwNtjtAgcs8XQuu31qdInRQl948vXZUw8m2ntoEGrgA&usqp=CAU')),
            message('Maritta Dwi', 'Okey fir', '10.19', Icons.done_all, Colors.blue, NetworkImage('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/08/31/3237294347.jpg')),
            message('Maritta Dwi', 'Okey fir', '10.19', Icons.done_all, Colors.blue, NetworkImage('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/08/31/3237294347.jpg')),
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
