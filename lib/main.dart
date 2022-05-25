import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BelajarAppBar(),
        // Application name
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ));
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 1,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 150.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image(
                    image: AssetImage('assets/image/backgroun.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      new Tab(icon: new Icon(Icons.shop), text: "Skincare"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(children: <Widget>[
            Shop(),
          ]),
        ),
      ),
    );
  }
}

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        Container(
          child: Card(
            elevation: 15.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/skincare1.jpg",
                height: 140.0,
                width: 190.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10.0),
              Text(
                "Clavuu",
                style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 10.0),
              Text(
                "Rp 321.000",
                style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 15.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/skincare2.jpg",
                height: 140.0,
                width: 190.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10.0),
              Text(
                "Somethinc",
                style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 10.0),
              Text(
                "Rp 99.000 - 130.000",
                style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 15.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/skincare3.png",
                height: 140.0,
                width: 190.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 11.0),
              Text(
                "Laneige",
                style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 10.0),
              Text(
                "Rp 452.000",
                style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 15.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/skincare4.png",
                height: 140.0,
                width: 190.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 11.0),
              Text(
                "Hanasui",
                style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 10.0),
              Text(
                "Rp 320.000",
                style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 15.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/skincare5.jpg",
                height: 140.0,
                width: 190.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 11.0),
              Text(
                "Suncreen Carasun",
                style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 10.0),
              Text(
                "Rp 89.000",
                style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 15.0,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/image/skincare6.jpg",
                height: 140.0,
                width: 190.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 11.0),
              Text(
                "Skintific",
                style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 10.0),
              Text(
                "Rp 100.000",
                style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.brown,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
