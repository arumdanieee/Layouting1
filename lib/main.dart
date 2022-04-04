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
    "Here's Your Prefect.mp3",
    "Doule Take.mp3",
    "Love Is Gone.mp3",
    "Roman Picisan.mp3",
    "Pangeran Cinta.mp3",
    "Satu Hati.mp3",
    "Kangen.mp3",
    "Elang.mp3",
    "Pupus",
    "Separuh Nafas.mp3",
    "Aku Milikmu.mp3",
    "Cukup Siti Nurbaya"
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
  final List gallery = [
    "Here's Your Prefect.mp3",
    "Doule Take.mp3",
    "Love Is Gone.mp3",
    "Roman Picisan.mp3",
    "Pangeran Cinta.mp3",
    "Satu Hati.mp3",
    "Kangen.mp3",
    "Elang.mp3",
    "Pupus",
    "Separuh Nafas.mp3",
    "Aku Milikmu.mp3",
    "Cukup Siti Nurbaya"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(gallery[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text('Music from ' + gallery[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: gallery.length,
      ),
    );
  }
}

class Info extends StatelessWidget {
  final List info = [
    "Here's Your Prefect.mp3",
    "Doule Take.mp3",
    "Love Is Gone.mp3",
    "Roman Picisan.mp3",
    "Pangeran Cinta.mp3",
    "Satu Hati.mp3",
    "Kangen.mp3",
    "Elang.mp3",
    "Pupus",
    "Separuh Nafas.mp3",
    "Aku Milikmu.mp3",
    "Cukup Siti Nurbaya"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(info[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text('Music from ' + info[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: info.length,
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
