import 'package:flutter/material.dart';

class Featured extends StatefulWidget {
  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text("Featured Food"),
          trailing: Text("View All"),
        ),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                height: 170,
                width: 120,
                decoration: BoxDecoration(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
