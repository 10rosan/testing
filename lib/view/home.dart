import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/bloc/cart_bloc.dart';
import 'package:testing/model/product_model.dart';
import 'package:testing/view/cart_page.dart';

class HomeNew extends StatefulWidget {
  @override
  _HomeNewState createState() => _HomeNewState();
}

class _HomeNewState extends State<HomeNew> {
  List<Product> products = [
    Product(
      title: "Apple",
      price: 100,
      description: "Apple a day keeps the doctor away.",
      sellingPrice: 80,
      image:
          "https://i2.wp.com/ceklog.kindel.com/wp-content/uploads/2013/02/firefox_2018-07-10_07-50-11.png",
    ),
    Product(
      title: "Mango",
      price: 150,
      description: "Apple a day keeps the doctor away.",
      sellingPrice: 80,
      image:
          "https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-260nw-607114589.jpg",
    ),
    Product(
      title: "Potato",
      price: 60,
      description: "Apple a day keeps the doctor away.",
      sellingPrice: 80,
      image:
          "https://assets.bonappetit.com/photos/5d7284758d926f0009df5cfc/5:4/w_3165,h_2532,c_limit/Basically-Gojuchang-Chicken-Potato.jpg",
    ),
    Product(
      title: "Tomato",
      price: 80,
      description: "Apple a day keeps the doctor away.",
      sellingPrice: 80,
      image:
          "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/tomatoes-1296x728-feature.jpg?w=1155&h=1528",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<CartBlock>(builder: (context, data, child) {
      return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("Shopping Cart"),
          actions: <Widget>[
            Row(
              children: <Widget>[
                Text(data.totalItems.toString()),
                IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
                    }),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        data.add(products[index]);
                      },
                      leading: Image.network(products[index].image),
                      title: Text(products[index].title),
                      subtitle: Text(products[index].sellingPrice.toString()),
                      trailing: Icon(Icons.add),
                    );
                  })
            ],
          ),
        ),
      );
    });
  }
}
