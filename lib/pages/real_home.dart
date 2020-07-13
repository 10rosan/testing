import 'package:flutter/material.dart';
import 'package:testing/model/house_model.dart';
import 'package:testing/pages/house_profile.dart';

class RealState extends StatefulWidget {
  @override
  _RealStateState createState() => _RealStateState();
}

class _RealStateState extends State<RealState> {
  List<HouseModel> _houses = [
    HouseModel(
        image:
            "https://99aana.com/wp-content/uploads/2019/10/1460-c-1200x675.jpg",
        title: "House on Sale",
        price: "Rs 50000",
        location: "Pokhara",
        room: "5",
        toilet: "2",
        land: "5",
        parking: "yes"),
    HouseModel(
        image:
            "https://www.gharjagganepal.com/wp-content/uploads/WPL/3083/thimg_1_1920x1048.jpg",
        title: "Lowest Price House",
        price: "Rs 10000",
        location: "Pokhara",
        room: "5",
        toilet: "2",
        land: "5",
        parking: "yes"),
    HouseModel(
        image:
            "https://epropertynepal.com/system/photos/1244/original_20205971_1564747340243724_1998325146_o.jpg?1500443278",
        title: "Dream House",
        price: "Rs 20000",
        location: "Chitwan",
        room: "5",
        toilet: "2",
        land: "5",
        parking: "yes"),
    HouseModel(
        image: "",
        title: "House on Sale",
        price: "Rs 5000",
        location: "Pokhara",
        room: "5",
        toilet: "2",
        land: "5",
        parking: "yes"),
    HouseModel(
        image: "",
        title: "House on Sale",
        price: "Rs 5000",
        location: "Pokhara",
        room: "5",
        toilet: "2",
        land: "5",
        parking: "yes"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Real State "),
        ),
        body: ListView.builder(
          itemCount: _houses.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HouseProfile(
                              houseModel: _houses[index],
                            )));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.network(_houses[index].image),
                    Text(
                      _houses[index].title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .apply(color: Colors.blue),
                    ),
                    Text(_houses[index].location),
                    Text(_houses[index].price),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
