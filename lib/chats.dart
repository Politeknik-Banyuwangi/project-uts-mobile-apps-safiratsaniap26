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
            message('Maritta Dwi', 'Okey mar', '12.19', Icons.done_all, Colors.blue, NetworkImage('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/08/31/3237294347.jpg')),
            message('Kelas TI-2D', 'Anda: iy rek', '11.40', Icons.done, Colors.grey, NetworkImage('https://cdn.popbela.com/content-images/post/20190519/img-242e1b2552582f651aee24c72e5e65e4_750x500.jpg')),
            message('Aditya Wiguna', 'Pcc', '08.23', Icons.done_all, Colors.blue, NetworkImage('https://cdn.kibrispdr.org/data/foto-bayangan-orang-23.jpg')),
            message('Adelina', 'Del Otw', '07.10', Icons.done_all, Colors.grey, NetworkImage('https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg')),
            message('Kakak', 'kak', 'kemarin', Icons.done_all, Colors.grey, NetworkImage('https://trimelive.com/wp-content/uploads/2021/03/kaos-kaki.jpg')),
            message('Kholifatul Putri', 'put gak nd kampus', 'kemarin', Icons.done_all, Colors.blue, NetworkImage('https://awsimages.detik.net.id/community/media/visual/2020/09/20/jenis-jenis-kucing-peliharaan-11_43.jpeg?w=700&q=90')),
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
