import 'package:flutter/material.dart';
import 'package:testing/pages/about.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STATION"),
      ),
      body: Wrap(
        children: <Widget>[
          FlatButton(
            color: Colors.red,
            onPressed: () {
              print("You pressed flat button");
            },
            child: Text("Click Me"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
            child: Text("About Us"),
          ),
          OutlineButton(
            onPressed: () {},
            child: Text("Click"),
          ),
          IconButton(icon: Icon(Icons.save), onPressed: () {})
        ],
      ),
    );
  }
}
