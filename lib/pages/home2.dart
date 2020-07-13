import 'package:flutter/material.dart';
import 'package:testing/pages/register_form.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 40,
                    color: Colors.white,
                    child: Text(
                      "Big Mac",
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 30,
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 40,
                    child: Text(
                      "Offer -10%",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            OutlineButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterForm()));
              },
              child: Text("Registration Form"),
            )
          ],
        ),
      ),
    );
  }
}
