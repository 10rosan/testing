import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        textTheme: Theme.of(context).textTheme,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Layouts"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //carosel
            SizedBox(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: Carousel(
                animationCurve: Curves.easeInOut,
                animationDuration: Duration(seconds: 2),
                indicatorBgPadding: 5,
                images: [
                  Image.asset(
                    'images/momo.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/pizza.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/chicken-chowmein.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),

            //w2
            ListTile(
              title: Text("Popular Dishes"),
              trailing: Text("View All"),
            ),

            //w3
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card(
                    child: Container(
                      width: 120,
                      height: 180,
                      //color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 140,
                            //color: Colors.green,
                            child: Image.asset(
                              'images/momo.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("Chicken Momo"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 120,
                      height: 180,
                      //color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 140,
                            //color: Colors.green,
                            child: Image.asset(
                              'images/pizza.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("Chicken Pizza"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 120,
                      height: 180,
                      //color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 140,
                            //color: Colors.green,
                            child: Image.asset(
                              'images/chicken-chowmein.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("Chicken Chow"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 120,
                      height: 180,
                      //color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 140,
                            //color: Colors.green,
                            child: Image.asset(
                              'images/sausage.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("Chicken Sausage"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 120,
                      height: 180,
                      //color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 140,
                            //color: Colors.green,
                            child: Image.asset(
                              'images/momo.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("Aloo"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Lockdown Menu"),
              trailing: Text("View All"),
            ),

            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        color: Colors.blue,
                        child: Image.asset(
                          'images/momo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: 40,
                        child: Row(
                          children: <Widget>[
                            Expanded(flex: 3, child: Text("Chicken Momo")),
                            Expanded(flex: 1, child: Text("Rs 120"))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        color: Colors.blue,
                        child: Image.asset(
                          'images/pizza.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: 40,
                        child: Row(
                          children: <Widget>[
                            Expanded(flex: 3, child: Text("Chicken Pizza")),
                            Expanded(flex: 1, child: Text("Rs 400"))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        color: Colors.blue,
                        child: Image.asset(
                          'images/chicken-chowmein.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: 40,
                        child: Row(
                          children: <Widget>[
                            Expanded(flex: 3, child: Text("Chicken Chowmein")),
                            Expanded(flex: 1, child: Text("Rs 140"))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        color: Colors.blue,
                        child: Image.asset(
                          'images/sausage.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: 40,
                        child: Row(
                          children: <Widget>[
                            Expanded(flex: 3, child: Text("Chicken Sausage")),
                            Expanded(flex: 1, child: Text("Rs 45"))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
