import 'package:flutter/material.dart';
import 'package:testing/model/house_model.dart';

class HouseProfile extends StatelessWidget {
  final HouseModel houseModel;
  HouseProfile({this.houseModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //image
            Image.network(houseModel.image),
            Text("Title: " + houseModel.title),
            Text(houseModel.price),
            Text(houseModel.location),
            Text(houseModel.land),
            Text(houseModel.room),
            Text(houseModel.toilet),
            Text(houseModel.parking),
          ],
        ),
      ),
    );
  }
}
