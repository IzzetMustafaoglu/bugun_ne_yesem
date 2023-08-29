import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Bugün Ne Yesem?",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> corbaAdleri = ["Mercimek","Tarhana","Tavuksuyu","Duğun Çorbası","Yoğurtlu çorba"];
  List<String> yemekAdleri = ["Karnıyarık","Mantı","Kuru Fasulye","İçli Köfte","Izgara Balık"];
  List<String> tatliAdleri = ["Kadayıf","Baklava","Sütlaç","Kazandibi","Dondurma"];

  void yemekleriYenile(){
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekleriYenile,
                child: Image.asset("assets/corba_$corbaNo.jpg"),
              ),
            ),
          ),
          Text(
            corbaAdleri[corbaNo-1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekleriYenile,

                child: Image.asset("assets/yemek_$yemekNo.jpg"),
              ),
            ),
          ),
          Text(
            yemekAdleri[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekleriYenile,
                child: Image.asset("assets/tatli_$tatliNo.jpg"),
              ),
            ),
          ),
          Text(
            tatliAdleri[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
            ),
          ),
        ],
      ),
    );
  }
}
