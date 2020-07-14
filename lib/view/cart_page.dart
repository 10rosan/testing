import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/bloc/cart_bloc.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartBlock>(
      builder: (context, data, child) {
        return Scaffold(
          bottomNavigationBar: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    " Items(${data.totalItems})",
                    textScaleFactor: 1.5,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Total:  ",
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        data.total.toString(),
                        textScaleFactor: 1.5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("Cart"),
          ),
          body: data.totalItems == 0
              ? Center(
                  child: Text(
                    "There is No Item in cart \n Please Buy Something",
                    textAlign: TextAlign.center,
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: data.totalItems,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                data.remove(data.products[index]);
                              },
                              leading:
                                  Image.network(data.products[index].image),
                              title: Text(data.products[index].title),
                              subtitle: Text(
                                  data.products[index].sellingPrice.toString()),
                              trailing: Icon(Icons.remove_circle),
                            );
                          })
                    ],
                  ),
                ),
        );
      },
    );
  }
}
