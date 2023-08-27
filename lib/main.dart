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

class YemekSayfasi extends StatelessWidget {
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
                    print(
                        "Çorba Butonu Tıklandı"); // Her tıklandığında Consola Merhaba yazsın
                  },
                  child: Image.asset("assets/corba_1.jpg")),
            ),
          ), // Expanded: Ekrana sığması için kullanılır
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: () {
                    print("Yemek Butonu Tıklandı");
                  },
                  child: Image.asset("assets/yemek_1.jpg")),
            ),
          ), // flex: Ekran hangsini kaç pay alacağını ayarlar
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: () {
                    print("Tatlı Butonu Tıklandı");
                  },
                  child: Image.asset("assets/tatli_1.jpg")),
            ),
          ),
        ],
      ),
    );
  }
}
