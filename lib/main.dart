 import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Saloka Theme Park';
  final String location = 'Tuntang, Kabupaten Semarang';
  final String description = 
      '''SALOKA hadir sebagai salah satu destinasi wisata Pesona Indonesia yang berbentuk taman rekreasi tematik keluarga di Jawa Tengah yang mengusung konsep kearifan lokal. Berlokasi di persimpangan antara kota Semarang, Salatiga, Surakarta dan Daerah Istimewa Yogyakarta.

Berdiri di atas lahan seluas 12 Hektare, memiliki 25 wahana yang terbagi dalam 5 zona permainan, yaitu zona Pesisir, zona Balalantar, zona Kamayayi, zona Ararya, dan zona Segara Prada. Tidak hanya wahana permainan, di dalamnya juga terdapat pertunjukan Baru Klintihing. Selain itu, ada pilihan restoran, café, dan foodtruck yang menawarkan berbagai makanan-minuman yang memanjakan lidah untuk bersantai. ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment. start,
        children: [
          Image.asset(
            'images/saloka.jpg',
            height: 250,
            width: 410,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15,
            ),
          Row(
            children: [
              Container(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Container(
                width: 100,
                ),
              Icon(
                Icons.star,
                size: 30,
                color: Colors.orange,
              ),
              Text(
                '4',
                style: TextStyle(
                fontSize: 18,
              ),
              ),
            ],
          ),
          Container(padding: EdgeInsets.all(15),
          child: Text(
            this.description,
            style: TextStyle(
              fontSize: 18,
            ), // TextStyle
            softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}

