import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("Settings")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("Cart")),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Roshan Adhikari"),
              accountEmail: Text("roshan.adhikari.se@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("R"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Station The Food"),
        centerTitle: true,
      ),
    );
  }
}
