import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      //title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      //theme: ThemeData(
      //primarySwatch: Colors.blue,
      //),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List food = [
    "Burger",
    "Pizza",
    "Pasta",
  ];
  //final String title;

  //const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Main Menu",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/images/fo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.restaurant), text: "Food"),
                      new Tab(icon: new Icon(Icons.local_drink), text: "Drink"),
                      new Tab(icon: new Icon(Icons.info), text: "Info"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(food[index], style: TextStyle(fontSize: 30)),
                ),
              );
            },
            itemCount: food.length,
          ),

          // new TabBarView(
          //   children: [
          //     Center(
          //       child: Image(
          //         image: AssetImage('assets/images/bur.jpg'),
          //         fit: BoxFit.cover,
          //       ),
          //       //Text(
          //       //"Song",
          //       //style: TextStyle(fontSize: 20),
          //       //),
          //     ),
          //     Center(
          //       child: Text(
          //         "Gallery",
          //         style: TextStyle(fontSize: 20),
          //       ),
          //     ),
          //     Center(
          //       child: Text(
          //         "Info",
          //         style: TextStyle(fontSize: 20),
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
      //appBar: AppBar(
      // The title text which will be shown on the action bar
      //title: Text(title),
    );
    //body: Center(
    //child: Text(
    //'Hello, World!',
    //),
    //),
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
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContents) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
