import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanPertama(),
  ));
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Portal Ramadhan"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new CardSaya(
                icon: Icons.access_alarm_sharp,
                teks: "Jadwal Imsak",
                warnaIcon: Colors.yellowAccent),
            new CardSaya(
                icon: Icons.place,
                teks: "Cari Masjid Terdekat",
                warnaIcon: Colors.yellowAccent),
            new CardSaya(
                icon: Icons.access_alarm_rounded,
                teks: "Jadwal Buka Puasa",
                warnaIcon: Colors.yellowAccent),
            new CardSaya(
                icon: Icons.music_note,
                teks: "Murotal Al-quran",
                warnaIcon: Colors.yellowAccent),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  CardSaya({
    required this.icon,
    required this.teks,
    required this.warnaIcon,
  });

  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 141,
      padding: new EdgeInsets.all(2.0),
      color: Colors.black,
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Icon(
              icon,
              size: 50.0,
              color: warnaIcon,
            ),
            new Text(
              teks,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
