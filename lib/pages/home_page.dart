import 'package:flutter/material.dart';
import 'package:testing/widgets/carousel_widget.dart';
import 'package:testing/widgets/featured_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets Call"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //slide show
            MyCarousel(),
            Featured(),
          ],
        ),
      ),
    );
  }
}
