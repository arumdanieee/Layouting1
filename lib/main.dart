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
                    image: AssetImage('assets/images/mu.webp'),
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
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Song"),
                      new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                      new Tab(icon: new Icon(Icons.info), text: "Info"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Song(),
              Gallery(),
              Info(),
            ],
          ),
          //new Container(
          //   child: TabBarView(
          //     children: [
          //       Container(
          //         padding: EdgeInsets.all(10),
          //         child: Row(
          //           children: [
          //             Container(
          //               width: 100.0,
          //               height: 100.0,
          //               color: Colors.blue,
          //               child: new Icon(Icons.home),
          //             ),
          //             Expanded(
          //               child: Container(
          //                 padding: EdgeInsets.all(15.0),
          //                 height: 100.0,
          //                 color: Colors.black,
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Text("Contoh"),
          //                     Text("Hai"),
          //                   ],
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          //     new TabBarView(
          //   children: [
          //     Container(
          //       padding: EdgeInsets.all(10),
          //       child: Row(
          //         children: [
          //           Container(
          //               width: 100.0,
          //               height: 100.0,
          //               color: Colors.blue,
          //               child: Image(
          //                 image: AssetImage('assets/images/bur.jpg'),
          //                 width: 50,
          //                 height: 50,
          //                 fit: BoxFit.cover,
          //               )),
          //           Expanded(
          //             child: Container(
          //               padding: EdgeInsets.all(15.0),
          //               height: 100.0,
          //               //color: Colors.black,
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text("Burger"),
          //                   Text("This is beef burger"),
          //                 ],
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //     //2
          //     Container(
          //       padding: EdgeInsets.all(10),
          //       child: Row(
          //         children: [
          //           Container(
          //             width: 100.0,
          //             height: 100.0,
          //             color: Colors.blue,
          //             child: Image(
          //               image: AssetImage('assets/images/bur.jpg'),
          //               width: 50,
          //               height: 50,
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //           Expanded(
          //             child: Container(
          //               padding: EdgeInsets.all(15.0),
          //               height: 100.0,
          //               color: Colors.black,
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text("Contoh"),
          //                   Text("Hai"),
          //                 ],
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //     //3
          //     Container(
          //       padding: EdgeInsets.all(10),
          //       child: Row(
          //         children: [
          //           Container(
          //             width: 100.0,
          //             height: 100.0,
          //             color: Colors.blue,
          //             child: Image(
          //               image: AssetImage('assets/images/bur.jpg'),
          //               width: 50.0,
          //               height: 50.0,
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //           Expanded(
          //             child: Container(
          //               padding: EdgeInsets.all(15.0),
          //               height: 100.0,
          //               color: Colors.black,
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text("Contoh"),
          //                   Text("Hai"),
          //                 ],
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //     // Center(
          //     //   child: Text(
          //     //     "Gallery",
          //     //     style: TextStyle(fontSize: 20),
          //     //   ),
          //     // ),
          //     // Center(
          //     //   child: Text(
          //     //     "Info",
          //     //     style: TextStyle(fontSize: 20),
          //     //   ),
          //     // ),
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

class Song extends StatelessWidget {
  final List song = [
    "DDU-DU DDU-DU",
    "DYNAMITE",
    "BOOMBAYAH",
    "DALLA DALLA",
    "BIRTHDAY",
    "AFTER SCHOOL",
    "NEXT LEVEL",
    "BLACK MAMBA",
    "NO ONE",
    "ELEVEN",
    "NOT SHY",
    "BBOOM BBOOM",
    "LOVESICK GIRL"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(song[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text('Music from ' + song[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: song.length,
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/bp.jpg",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/it.jpg",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/sm.jpg",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/b.jpg",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/j.jpg",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/li.jpg",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/ji.webp",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/v.webp",
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
