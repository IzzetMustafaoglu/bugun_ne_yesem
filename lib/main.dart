import 'package:flutter/material.dart';

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
  int corbaNo = 3;
  int yemekNo = 1;
  int tatliNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    corbaNo++;
                    corbaNo = corbaNo % 5 + 1;
                  });
                },
                child: Image.asset("assets/corba_$corbaNo.jpg"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    yemekNo++;
                    yemekNo = yemekNo % 5 + 1;
                    print("Yemek Butonu Tıklandı");
                  });
                },
                child: Image.asset("assets/yemek_$yemekNo.jpg"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    tatliNo++;
                    tatliNo = tatliNo % 5 + 1;
                    print("Tatlı Butonu Tıklandı");
                  });
                },
                child: Image.asset("assets/tatli_$tatliNo.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
