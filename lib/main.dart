import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Flutter"),
        ),
        body: Container(
          color: Colors.blue,
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Halaman Utama',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg',
                width: 380.0,
                height: 160.0,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg',
                //width: 380.0,
                //height: 160.0,
                //fit: BoxFit.cover,
              ),
            ],
            //body: Image.network('https://img.freepik.com/free-vector/floral-card_53876-91231.jpg?size=626&ext=jpg'),
          ),

          // Application name
          //title: 'Belajar Flutter',
          // Application theme data, you can set the colors for the application as
          // you want
          //theme: ThemeData(
          //primarySwatch: Colors.blue,
          //),
          // A widget which will be started on application startup
          //home: MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //final String title;

  //const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text('Belajar Flutter'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        //height: 600,
        //width: 350,
        //alignment: Alignment.topLeft,
        //color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              '',
              width: 380.0,
              height: 160.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            //Text(
            //'Halaman Utama',
            //style: TextStyle(fontSize: 20, color: Colors.white),
            //),
            Image.network(
              'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg',
              //width: 380.0,
              //height: 160.0,
              //fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
