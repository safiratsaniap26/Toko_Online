import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewHome(),
    );
  }
}

class ListViewHome extends StatelessWidget {
  var date = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shop Skincare'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/skincare4.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 10.0),
              child: Text('Paket Skincare Hanasui', style: TextStyle(fontSize: 25.0)),
            ),
            Container(
              height: 50,
              child: Text('Rp 320.000', style: TextStyle(color: Colors.orange, fontSize: 35)),
            ),
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 10.0),
              child: Text('Tersedia Stok 41pcs', style: TextStyle(fontSize: 18.0)),
            ),
          ],
        ));
  }
}
